<#
.SYNOPSIS
    Pemeriksaan kesehatan SEO berulang untuk dicetaksaja.id.
.DESCRIPTION
    Cek status HTTP, sitemap, judul/H1, schema, dan CTA WA pada landing page
    serta semua artikel di sitemap. Hasil ditampilkan di layar dan disimpan
    ke folder seo-reports/.
.EXAMPLE
    powershell -ExecutionPolicy Bypass -File .\seo-monitor.ps1
#>
param(
    [string]$OutDir = ".\seo-reports",
    [switch]$SkipArticles
)

$ErrorActionPreference = "Stop"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$SITE = "https://dicetaksaja.id"
$SITEMAP = "$SITE/sitemap.xml"
$CORE = @(
    "$SITE/",
    "$SITE/robots.txt",
    "$SITEMAP",
    "https://www.dicetaksaja.id/",
    "https://blog.dicetaksaja.id/"
)

function Get-Url {
    param([string]$Url)
    try {
        $r = Invoke-WebRequest -Uri $Url -UseBasicParsing -TimeoutSec 25
        return @{ Status = [int]$r.StatusCode; Body = [string]$r.Content; Error = "" }
    } catch {
        $code = 0
        if ($_.Exception.Response) { $code = [int]$_.Exception.Response.StatusCode }
        return @{ Status = $code; Body = ""; Error = $_.Exception.Message }
    }
}

function M([string]$Pattern, [string]$Text) {
    $m = [regex]::Match($Text, $Pattern, [Text.RegularExpressions.RegexOptions]::IgnoreCase)
    if ($m.Success) { return $m.Groups[1].Value.Trim() }
    return ""
}

$lines = New-Object System.Collections.Generic.List[string]
function Say([string]$s) {
    $lines.Add($s)
    Write-Host $s
}

$stamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss WIB"
Say "================================================================"
Say "SEO HEALTH CHECK - dicetaksaja.id"
Say "Waktu   : $stamp"
Say "================================================================"

# ---------- 1. URL inti ----------
Say ""
Say "[1] URL INTI"
$failCore = 0
foreach ($u in $CORE) {
    $r = Get-Url $u
    if ($r.Status -eq 200) { $flag = "OK  " } else { $flag = "FAIL"; $failCore++ }
    Say ("  {0} {1,-3} {2}" -f $flag, $r.Status, $u)
}

# ---------- 2. Sitemap ----------
Say ""
Say "[2] SITEMAP"
$sm = Get-Url ($SITEMAP + "?nocache=" + (Get-Date -Format yyyyMMddHHmmss))
$urls = @()
if ($sm.Status -eq 200) {
    $urls = [regex]::Matches($sm.Body, "<loc>\s*([^<]+)</loc>") | ForEach-Object { $_.Groups[1].Value.Trim() }
    Say ("  OK   Sitemap terbaca, {0} URL" -f $urls.Count)
} else {
    Say ("  FAIL Sitemap tidak terbaca (HTTP {0})" -f $sm.Status)
}

# ---------- 3. Landing page ----------
Say ""
Say "[3] LANDING PAGE"
$landing = Get-Url ($SITE + "/?nocache=" + (Get-Date -Format yyyyMMddHHmmss))
if ($landing.Status -eq 200) {
    $h = $landing.Body
    $title = M "<title[^>]*>([\s\S]*?)</title>" $h
    $desc  = M "<meta[^>]+name=[`"']description[`"'][^>]+content=[`"']([^`"']*)" $h
    if (-not $desc) { $desc = M "<meta[^>]+content=[`"']([^`"']*)[`"'][^>]+name=[`"']description[`"']" $h }
    $h1    = M "<h1\b[^>]*>([\s\S]*?)</h1>" $h
    $h1    = [regex]::Replace($h1, "<br\s*/?>", " ")
    $h1    = [regex]::Replace($h1, "<[^>]+>", "")
    $h1    = [regex]::Replace($h1, "\s+", " ").Trim()
    $imgs  = [regex]::Matches($h, "<img\b").Count
    $noalt = 0
    foreach ($im in [regex]::Matches($h, "<img\b[^>]*>")) {
        if ($im.Value -notmatch "\balt\s*=") { $noalt++ }
    }
    $wa   = [regex]::Matches($h, "wa\.me/6281213053872").Count
    $blog = [regex]::Matches($h, "blog\.dicetaksaja\.id").Count
    $kw   = if ($h -match "name=[`"']keywords[`"']") { "ADA (harus dihapus)" } else { "tidak ada (OK)" }
    $schema = @()
    foreach ($s in [regex]::Matches($h, '"@type"\s*:\s*"([^"]+)"')) { $schema += $s.Groups[1].Value }
    $schema = $schema | Select-Object -Unique

    Say ("  Title    : {0}" -f $title)
    Say ("  Desc     : {0} karakter" -f $desc.Length)
    Say ("  H1       : {0}" -f $h1)
    Say ("  Gambar   : {0} total, {1} tanpa alt" -f $imgs, $noalt)
    Say ("  CTA WA   : {0} tautan | Blog links: {1}" -f $wa, $blog)
    Say ("  Meta kw  : {0}" -f $kw)
    Say ("  Schema   : {0}" -f ($schema -join ", "))
    Say ("  Canonical: {0}" -f (M "<link[^>]+rel=[`"']canonical[`"'][^>]+href=[`"']([^`"']*)" $h))
} else {
    Say ("  FAIL HTTP {0}" -f $landing.Status)
}

# ---------- 4. Artikel ----------
if (-not $SkipArticles -and $urls.Count -gt 0) {
    Say ""
    Say "[4] ARTIKEL (dari sitemap)"
    $bad = New-Object System.Collections.Generic.List[string]
    $okCount = 0
    foreach ($u in $urls) {
        if ($u -notmatch "blog\.dicetaksaja\.id") { continue }
        $slug = ($u -split "/")[-1]
        $r = Get-Url $u
        if ($r.Status -ne 200) {
            $bad.Add("HTTP $($r.Status) - $slug")
            continue
        }
        $b = $r.Body
        $t = M "<title[^>]*>([\s\S]*?)</title>" $b
        $h1a = M "<h1\b[^>]*>([\s\S]*?)</h1>" $b
        $h1a = [regex]::Replace($h1a, "<br\s*/?>", " ")
        $h1a = [regex]::Replace($h1a, "<[^>]+>", "")
        $h1a = [regex]::Replace($h1a, "\s+", " ").Trim()
        $issues = @()
        if (-not $t -or $t -match "^\s*-\s") { $issues += "judul kosong" }
        if ($h1a -match "Tanpa judul|^\s*$") { $issues += "H1 kosong" }
        if ($b -match "schema\.org/Product") { $issues += "Product schema" }
        if ($b -match "aggregateRating") { $issues += "rating palsu" }
        if ($b -notmatch "BlogPosting") { $issues += "tanpa BlogPosting" }
        if ($b -notmatch "wa\.me/6281213053872") { $issues += "tanpa CTA WA" }
        if ($b -notmatch "dicetaksaja\.id") { $issues += "tanpa link landing" }
        if ($issues.Count -gt 0) {
            $bad.Add(("{0} -> {1}" -f $slug, ($issues -join ", ")))
        } else { $okCount++ }
    }
    Say ("  Sehat   : {0} artikel" -f $okCount)
    Say ("  Masalah : {0} artikel" -f $bad.Count)
    foreach ($x in $bad) { Say ("    ! {0}" -f $x) }
}

Say ""
Say "================================================================"
Say ("SELESAI. Core URL gagal: {0}" -f $failCore)
Say "================================================================"

# ---------- Simpan laporan ----------
if (-not (Test-Path $OutDir)) { New-Item -ItemType Directory -Path $OutDir | Out-Null }
$file = Join-Path $OutDir ("seo-check-" + (Get-Date -Format yyyyMMdd-HHmm) + ".txt")
$lines | Out-File -FilePath $file -Encoding UTF8
Write-Host "`nLaporan disimpan: $file"
