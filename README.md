# DicetakSaja — Landing Page + Rencana Domain

Landing page statis (HTML + CSS + JS murni) untuk brand **DicetakSaja / AnaGroup Printing**, kelanjutan dari blog https://dicetaksaja.blogspot.com/.

## Isi folder

| File | Fungsi |
| --- | --- |
| `index.html` | Halaman utama + metadata SEO + schema LocalBusiness |
| `styles.css` | Seluruh gaya/tampilan responsif |
| `script.js` | Menu mobile, scroll reveal, FAQ accordion, tahun footer |
| `CNAME` | Nama domain custom untuk GitHub Pages (ubah kalau pilih nama lain) |
| `sitemap.xml` | Daftar 36 URL yang disubmit ke Google Search Console |
| `content-plan.md` | Kalender 30 artikel harian + aturan produksi |
| `blog-drafts/` | Draft HTML artikel harian #1–#30 + `PUBLISH-META.md` (permalink, deskripsi, label) |
| `SEO-HEALTH.md` | Audit SEO, posisi di Google, prioritas page 1, dan cara monitoring |
| `seo-monitor.ps1` | Script PowerShell untuk cek kesehatan SEO berulang |
| `seo-reports/` | Hasil laporan otomatis dari `seo-monitor.ps1` |

## Rekomendasi nama domain

Status dicek lewat RDAP pada **20 November 2026**. Tetap konfirmasi lagi di registrar saat pembelian, karena status bisa berubah.

| Prioritas | Domain | Status RDAP | Catatan |
| --- | --- | --- | --- |
| ⭐ 1 | **dicetaksaja.id** | Belum terdaftar | Paling pas: sama persis dengan brand blog, mudah diingat pasar Indonesia |
| 2 | **cetaksaja.id** | Belum terdaftar | Lebih pendek, kata kunci "cetak" lebih kuat |
| 3 | **dicetakaja.id** | Belum terdaftar | Versi ejaan lebih singkat ("aja"), cocok untuk pasar informal |
| 4 | **anagroupprint.id** | Belum terdaftar | Menguatkan nama bisnis AnaGroup Printing |
| — | `dicetaksaja.com` | ❌ Sudah terdaftar sejak 2025 (Namecheap/Cloudflare) | Jangan dipakai |
| — | `dicetakaja.com` | ❌ Sudah terdaftar Nov 2026 (Namecheap/Cloudflare) | Jangan dipakai |
| — | `anagroup.id` | ❌ Sudah terdaftar sejak 2017 | Sudah dipakai (web/blog saat ini) |

Catatan:
- Di **DomaiNesia**, ekstensi `.id`, `.my.id`, dan `.biz.id` **tidak memerlukan dokumen usaha** — cukup klik link verifikasi yang dikirim ke email setelah pembayaran lunas. Ekstensi seperti `.co.id`, `.web.id`, `.or.id`, `.ac.id` baru memerlukan dokumen. Kebijakan registrar lain bisa berbeda.
- Alternatif `.com`: `cetaksaja.com` (status RDAP: belum terdaftar saat pengecekan). `dicetaksaja.com` sudah terdaftar.
- Hindari nama terlalu generik seperti `percetakanmurah.id` — sulit dibedakan dan biasanya mahal di secondary market.

## Keputusan pembelian (20 November 2026)

| Item | Detail |
| --- | --- |
| Domain | **dicetaksaja.id** |
| Registrar | **DomaiNesia** (PT Deneva — registrar resmi PANDI) |
| Siklus | **2 tahun sekaligus** (lebih hemat: ≈Rp165.390/tahun) |
| Subtotal | Rp298.000 |
| PPN 11% | Rp32.780 |
| **Total** | **Rp330.780** |
| Status | ✅ **Lunas, verifikasi email selesai, domain aktif.** RDAP PANDI: terdaftar 20 Nov 2026 07:56 UTC, expired 20 Nov 2028. Nameserver `nsx1.domainesia.com`, `nsx2.domainesia.com`. DNS publik sudah resolve global. |
| Include | DNS Management gratis 2 tahun |

**Progres deploy:**
- ✅ Email DomaiNesia sudah diverifikasi.
- ✅ File sudah di-commit ke https://github.com/anagroupOK/Anagroup-Printing (branch `main`), commit terbaru `0077610` (cetak buku umroh + optimalisasi kata kunci).
- ✅ GitHub Pages aktif: source **Deploy from a branch → main / (root)**. `github.io/Anagroup-Printing` sudah redirect ke `dicetaksaja.id`.
- ✅ DNS sudah ditambahkan di DomaiNesia (4 A + 3 CNAME) dan sudah resolve global.
- ✅ **Situs LIVE**: https://dicetaksaja.id/ (HTTP 200, HTTPS 200, `www` ikut ke root).
- ✅ GitHub Pages: **DNS check successful**, **Enforce HTTPS** sudah dicentang.
- ✅ Blogger: `https://blog.dicetaksaja.id/` sudah aktif (HTTPS 200). `http://` otomatis dialihkan ke HTTPS via 301. Semua tautan blog di landing page dan sitemap sudah memakai HTTPS.
- ✅ Tautan internal di 6 artikel blog (spanduk, cutting sticker, novel, paperbag, ID card, fotocopy murah) sudah dicek/HTTPS. Sisa `http://` di halaman artikel berasal dari namespace schema.org/W3C dan breadcrumb bawaan Blogger, bukan tautan konten.

**Progres SEO (22 Nov 2026):**
- ✅ Artikel harian #1 publish: `Fotocopy Murah Rawamangun 24 Jam: Cepat, Rapi, Antar-Jemput` — `https://blog.dicetaksaja.id/2026/11/blog-post_950.html` (permalink custom belum tersimpan; perlu rename manual saat sesi stabil). Sudah ditautkan di landing page + sitemap.
- ✅ Artikel harian #2 publish: `Percetakan Rawamangun Jakarta Timur: Cetak Cepat, Bisa WA 24 Jam` — `https://blog.dicetaksaja.id/2026/11/percetakan-rawamangun-jakarta-timur.html` (permalink custom OK, live terverifikasi). Sudah ditautkan di landing page + sitemap.
- ✅ Artikel harian #3 publish: `Print A3+ Rawamangun Mulai Rp1.750: Poster, Denah, & Gambar Teknis` — `https://blog.dicetaksaja.id/2026/11/print-a3-rawamangun-mulai-rp1750-poster.html` (permalink Blogger auto-generate, live terverifikasi). Sudah ditautkan di landing page + sitemap.
- ✅ Artikel harian #4–#10 publish (live terverifikasi, ditautkan di landing page + sitemap):
  - #4 Brosur: `https://blog.dicetaksaja.id/2026/11/cetak-brosur-rawamangun-untuk-promosi.html`
  - #5 Jilid skripsi: `https://blog.dicetaksaja.id/2026/11/blog-post_320.html` (permalink custom belum tersimpan)
  - #6 Scan dokumen: `https://blog.dicetaksaja.id/2026/11/scan-dokumen-rawamangun-a4f4-cepat.html`
  - #7 Poster A3+: `https://blog.dicetaksaja.id/2026/11/cetak-poster-a3-rawamangun-untuk-event.html`
  - #8 Kartu nama: `https://blog.dicetaksaja.id/2026/11/blog-post_585.html` (permalink custom belum tersimpan)
  - #9 Booklet: `https://blog.dicetaksaja.id/2026/11/cetak-booklet-rawamangun-company.html`
  - #10 Buku yasin: `https://blog.dicetaksaja.id/2026/11/cetak-buku-yasin-rawamangun.html`
 - ✅ Artikel harian #11–#16 publish (live terverifikasi, ditautkan di landing page + sitemap):
   - #11 Undangan: `https://blog.dicetaksaja.id/2026/11/blog-post_931.html`
   - #12 Stiker label produk: `https://blog.dicetaksaja.id/2026/11/cetak-stiker-label-produk-umkm.html`
   - #13 Banner event: `https://blog.dicetaksaja.id/2026/11/cetak-banner-event-rawamangun-cepat.html`
   - #14 Buku tahunan sekolah: `https://blog.dicetaksaja.id/2026/11/cetak-buku-tahunan-sekolah-bts.html`
   - #15 Nota NCR: `https://blog.dicetaksaja.id/2026/11/blog-post_24.html`
   - #16 Kop surat: `https://blog.dicetaksaja.id/2026/11/cetak-kop-surat-rawamangun-identitas.html`
- ✅ Title + meta description + H1 dioptimalkan untuk kata kunci lokal dan layanan: *cetak buku umroh/umrah, buku novel, buku tahunan sekolah (BTS), booklet, spanduk vinyl, cutting sticker, paperbag, ID card PVC, fotocopy murah, digital printing A3+, scan A0–A4, kaos, Rawamangun Jakarta Timur, order WA 24 jam*.
- ✅ 17 kartu layanan, 13 FAQ, dan 14 entri `OfferCatalog`; 11 tautan internal ke artikel blog yang sudah kaya kata kunci (buku umroh, Yasin, agenda, kaos, buku menu, digital printing, spanduk, cutting sticker, buku novel, paperbag, ID card).
- ✅ Strategi kata kunci memakai variasi ejaan **`umroh`** dan **`umrah`**, serta istilah **`BTS`** diperjelas sebagai **buku tahunan sekolah**. Tidak memakai meta `keywords` (diabaikan Google) — fokus ke search intent, konten, tautan internal, dan schema.
- ✅ `hreflang="id-ID"` + `x-default`, meta geo, `og:locale`, `max-image-preview:large`.
- ✅ Structured data `@graph`: `LocalBusiness` + `WebSite` + `FAQPage` (13 FAQ, teksnya identik dengan FAQ yang terlihat). `OfferCatalog` berisi 14 layanan, termasuk 5 penambahan terbaru. Alamat diverifikasi dari Google Maps listing (`Jalan Balai Pustaka Baru, RW 07`, 13220).
- ✅ `robots.txt` + `sitemap.xml` (36 URL: landing page + 35 artikel blog, termasuk 30 artikel target). Blogger robots.txt kustom juga sudah diperbarui ke `Sitemap: https://dicetaksaja.id/sitemap.xml`.
- ✅ Google Search Console: properti **`sc-domain:dicetaksaja.id`** diverifikasi otomatis lewat CNAME Google; sitemap **`https://dicetaksaja.id/sitemap.xml`** status **Sukses**; URL root **diuji langsung → "Halaman dapat diindeks"** dan **indexing telah diminta** (antrean crawl prioritas). Pembaruan terbaru sudah tayang, jadi Google akan mengambil versi ini lewat sitemap pada crawl berikutnya.
- ✅ Lighthouse terakhir: **Accessibility 100, Best Practices 100, SEO 100**.
- ✅ Pipeline konten lengkap: **30 artikel HTML** (intro 80–120 kata, 4 FAQ, CTA WA, internal link HTTPS) plus `blog-drafts/PUBLISH-META.md` berisi judul, URL live, deskripsi 140–160 karakter, dan label SEO. **Ke-30 artikel sudah live di Blogger per 25 Nov 2026**; #17–#30 terbit pada 25 Nov memakai permalink aktual Blogger.
- ✅ Semua 42 foto hasil cetak asli sudah terpasang di galeri (7 kolom × 6 baris, total ±508 KB).
- ✅ Harga final mulai sudah dipasang: fotocopy A4 **Rp200/lembar**, buku umroh **Rp12.000/buku**, print digital A3+ **Rp1.750/lembar**, kartu nama **Rp35.000**.
- ⏳ Masih perlu: testimoni berizin dan konfirmasi harga final untuk layanan lainnya sebelum tayang permanen.

**Cross-link 3 domain (25 Nov 2026):**
- ✅ `dicetaksaja.id` → `www.anagroup.id` + `print.anagroup.id` (footer + `sameAs`).
- ✅ `www.anagroup.id` → `dicetaksaja.id` + `print.anagroup.id` via WPCode snippet **Anagroup Crosslink Network** (ID `8314`, HTML, Active, Site Wide Footer). Live di homepage dan halaman `/kontak/`.
- ✅ `print.anagroup.id` → `dicetaksaja.id` + `www.anagroup.id` (footer + `sameAs`) setelah upload `index.html` ke `/home/anagroup/public_html/print/index.html` lewat cPanel File Manager.

### Galeri foto & slot testimoni

- **Galeri `#galeri`** sudah berisi **42 foto asli** dari `D:\Hasil Produk`, dioptimasi jadi sisi terpanjang **320 px** (142–247×320 px, ±8–19 KB per file, total **±508 KB**), format JPG, `loading="lazy"`, dengan `alt` deskriptif.
- Tampilannya: grid **7 kolom × 6 baris** di desktop, caption tipis di bawah foto, dan hover zoom halus. Responsif: 5 kolom (≤900 px), 4 kolom (≤860 px), 3 kolom (≤560 px).
- Pemetaan file:
  | File di web | Sumber asli |
  | --- | --- |
  | `images/buku-umroh.jpg` | `Cetak Buku Umroh (4).jpg` |
  | `images/buku-tahunan-sekolah.jpg` | `Cetak Buku Tahunan Sekolah (2).jpg` |
  | `images/booklet-katalog.jpg` | `Cetak Booklet (6).jpg` |
  | `images/cetak-jilid-buku.jpg` | `Cetak dan JIlid Buku (2).jpg` |
  | `images/print-digital-a3plus.jpg` | `Print Digital A3+ (2).jpg` |
  | `images/cutting-sticker.jpg` | `Cutting Sticker (2).jpg` |
- Kalau mau ganti/tambah foto: jalankan utility `AppData\Local\Temp\opencode\build-full-gallery.ps1`. Script ini membaca **semua** file di `D:\Hasil Produk`, membuat thumbnail (`$maxSide = 320`, `$quality = 72`), lalu menulis ulang blok `.gallery-grid` di `index.html`. Foto sumber asli tetap ada di `D:\Hasil Produk`.
- **Testimoni:** duplikat blok `<figure class="testi-card">` di section `#testimoni` untuk tiap testimoni baru. Format singkat: *inisial/nama · jenis layanan · satu kalimat pengalaman*. Slot berizin sudah disiapkan dengan tombol WA di bawah kartu testimoni. **Selalu minta izin dulu** sebelum memasang nama atau kutipan pelanggan.

### Rekomendasi struktur

- `dicetaksaja.id` → landing page ini
- `blog.dicetaksaja.id` → blog Blogger (custom domain)
- `www.dicetaksaja.id` → redirect ke `dicetaksaja.id`

## Cara pasang domain

### Opsi A — Landing page di GitHub Pages / Netlify / Vercel (paling mudah)

1. Domain sudah dibeli di **DomaiNesia** dan sudah diverifikasi. Catatan: Cloudflare Registrar **tidak mendukung** ekstensi `.id`.
2. ✅ File sudah ter-upload di **https://github.com/anagroupOK/Anagroup-Printing** (branch `main`): `index.html`, `styles.css`, `script.js`, `CNAME`, `README.md`. File `CNAME` berisi `dicetaksaja.id` — **jangan dihapus/diubah**.
3. ✅ GitHub Pages sudah aktif: **Settings → Pages → Source: Deploy from a branch → main / (root)**.
4. ✅ Sudah ditambahkan di DomaiNesia → Kelola `dicetaksaja.id` → **DNS Management**:
   - `A` `@` → `185.199.108.153`
   - `A` `@` → `185.199.109.153`
   - `A` `@` → `185.199.110.153`
   - `A` `@` → `185.199.111.153`
   - `CNAME` `www` → `anagroupOK.github.io`
   - `CNAME` `blog` → `ghs.google.com` (untuk Blogger)
   - `CNAME` `7zdlg2vc5uk5` → `gv-zfjthynhht64di.dv.googlehosted.com` (verifikasi kepemilikan Blogger, unik per akun)
5. ✅ Setelah DNS aktif, **Enforce HTTPS** di GitHub Pages sudah dicentang.

Untuk Netlify/Vercel, upload folder ini lalu ikuti instruksi DNS yang muncul di dashboard (biasanya cukup 1 record `A` atau `CNAME`).

### Opsi B — Tetap pakai Blogger dengan domain sendiri

1. ✅ Di Blogger: **Settings → Publishing → Custom domain** sudah diisi `blog.dicetaksaja.id` (subdomain dipakai agar root tetap landing page).
2. Blogger meminta **2 CNAME** dan keduanya sudah ditambahkan di DomaiNesia:
   - `blog` → `ghs.google.com`
   - `7zdlg2vc5uk5` → `gv-zfjthynhht64di.dv.googlehosted.com` (security/verification CNAME, unik per blog)
3. Klik **Save** ulang di Blogger **minimal 1 jam** setelah DNS ditambahkan (instruksi resmi Google), lalu tunggu sertifikat HTTPS provisioned.
4. **Alihkan domain** (redirect root) sengaja **dimatikan** agar `dicetaksaja.id` tetap menampilkan landing page.
   - Catatan: 4 record `A` Google (`216.239.32.21`, dll.) hanya dipakai kalau root domain dipetakan langsung ke Blogger — tidak dipakai di sini.

## Sebelum tayang

- [ ] Ganti semua kemunculan `dicetaksaja.id` di `index.html` (canonical, og:url, JSON-LD) kalau nama domain berubah.
- [ ] Sesuaikan nomor WhatsApp `6281213053872` di semua tombol WA (tips: cari "wa.me/").
- [x] Pasang harga final yang sudah dikonfirmasi: fotocopy A4 mulai Rp200, buku umroh mulai Rp12.000, print digital A3+ mulai Rp1.750, kartu nama mulai Rp35.000. Harga scan (`Rp250/lembar`) masih mengikuti estimasi lama.
- [ ] Ganti testimoni dengan izin/atribusi pelanggan bila diperlukan.
- [x] Pasang 42 foto hasil cetak asli di `#galeri` (grid 7×6; widget hero tetap CSS agar ringan).
- [ ] Tambahkan testimoni berizin dengan menduplikat blok `.testi-card`.
- [ ] Uji di HP: menu, tombol WA, dan kecepatan (Lighthouse).

## Menjalankan lokal

Tidak perlu build. Buka `index.html` langsung di browser, atau:

```powershell
cd "C:\Users\&RA-pc\dicetaksaja-landing"
python -m http.server 8080
```

Lalu buka http://localhost:8080.
