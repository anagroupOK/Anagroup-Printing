# DicetakSaja — Landing Page + Rencana Domain

Landing page statis (HTML + CSS + JS murni) untuk brand **DicetakSaja / AnaGroup Printing**, kelanjutan dari blog https://dicetaksaja.blogspot.com/.

## Isi folder

| File | Fungsi |
| --- | --- |
| `index.html` | Halaman utama + metadata SEO + schema LocalBusiness |
| `styles.css` | Seluruh gaya/tampilan responsif |
| `script.js` | Menu mobile, scroll reveal, FAQ accordion, tahun footer |
| `CNAME` | Nama domain custom untuk GitHub Pages (ubah kalau pilih nama lain) |

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
- ✅ Blogger: `http://blog.dicetaksaja.id/` sudah aktif (HTTP 200, judul blog tampil). HTTPS Blogger masih **"Tidak Ada"** — sertifikat biasanya diprovision otomatis dalam 24 jam setelah custom domain aktif.

**Progres SEO (20 Nov 2026):**
- ✅ Title + meta description + H1 dioptimalkan untuk kata kunci lokal dan layanan: *cetak buku umroh/umrah, buku tahunan sekolah (BTS), booklet, fotocopy murah, digital printing A3+, scan A0–A4, kaos, Rawamangun Jakarta Timur, order WA 24 jam*.
- ✅ 12 kartu layanan, 8 FAQ, dan 9 entri `OfferCatalog`; 6 tautan internal ke artikel blog yang sudah kaya kata kunci (buku umroh, Yasin, agenda, kaos, buku menu, digital printing).
- ✅ Strategi kata kunci memakai variasi ejaan **`umroh`** dan **`umrah`**, serta istilah **`BTS`** diperjelas sebagai **buku tahunan sekolah**. Tidak memakai meta `keywords` (diabaikan Google) — fokus ke search intent, konten, tautan internal, dan schema.
- ✅ `hreflang="id-ID"` + `x-default`, meta geo, `og:locale`, `max-image-preview:large`.
- ✅ Structured data `@graph`: `LocalBusiness` + `WebSite` + `FAQPage` (8 FAQ, teksnya identik dengan FAQ yang terlihat). Alamat diverifikasi dari Google Maps listing (`Jalan Balai Pustaka Baru, RW 07`, 13220).
- ✅ `robots.txt` + `sitemap.xml` (200, 1 URL).
- ✅ Google Search Console: properti **`sc-domain:dicetaksaja.id`** diverifikasi otomatis lewat CNAME Google; sitemap **`https://dicetaksaja.id/sitemap.xml`** status **Sukses**; URL root **diuji langsung → "Halaman dapat diindeks"** dan **indexing telah diminta** (antrean crawl prioritas). Pembaruan terbaru sudah tayang, jadi Google akan mengambil versi ini lewat sitemap pada crawl berikutnya.
- ✅ Lighthouse terakhir: **Accessibility 100, Best Practices 100, SEO 100**.
- ✅ Foto hasil cetak asli sudah terpasang di galeri (6 foto, total ±596 KB).
- ⏳ Masih perlu: testimoni berizin dan konfirmasi harga final sebelum tayang permanen.

### Galeri foto & slot testimoni

- **Galeri `#galeri`** sudah berisi 6 foto asli dari `D:\Hasil Produk`, dioptimasi jadi **619×1100 px, <200 KB per file**, format JPG, `loading="lazy"`, dengan `alt` deskriptif.
- Pemetaan file:
  | File di web | Sumber asli |
  | --- | --- |
  | `images/buku-umroh.jpg` | `Cetak Buku Umroh (4).jpg` |
  | `images/buku-tahunan-sekolah.jpg` | `Cetak Buku Tahunan Sekolah (2).jpg` |
  | `images/booklet-katalog.jpg` | `Cetak Booklet (6).jpg` |
  | `images/cetak-jilid-buku.jpg` | `Cetak dan JIlid Buku (2).jpg` |
  | `images/print-digital-a3plus.jpg` | `Print Digital A3+ (2).jpg` |
  | `images/cutting-sticker.jpg` | `Cutting Sticker (2).jpg` |
- Kalau mau ganti foto: utility PowerShell ada di `AppData\Local\Temp\opencode\optimize-gallery.ps1` (ubah daftar `$map`, lalu jalankan). Ukuran ideal tetap **minimal 800×600 px**, JPG/WEBP, **<200 KB**.
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
- [ ] Cek lagi estimasi harga (`Rp150`, `Rp250`) dengan daftar harga terbaru.
- [ ] Ganti testimoni dengan izin/atribusi pelanggan bila diperlukan.
- [x] Isi 6 slot foto hasil cetak asli di `#galeri` (sudah terpasang; widget hero tetap CSS agar ringan).
- [ ] Tambahkan testimoni berizin dengan menduplikat blok `.testi-card`.
- [ ] Uji di HP: menu, tombol WA, dan kecepatan (Lighthouse).

## Menjalankan lokal

Tidak perlu build. Buka `index.html` langsung di browser, atau:

```powershell
cd "C:\Users\&RA-pc\dicetaksaja-landing"
python -m http.server 8080
```

Lalu buka http://localhost:8080.
