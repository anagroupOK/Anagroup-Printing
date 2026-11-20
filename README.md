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
| Status | ✅ **Lunas & aktif.** RDAP PANDI: terdaftar 20 Nov 2026 07:56 UTC, expired 20 Nov 2028. Setelah verifikasi email, nameserver berubah ke `nsx1.domainesia.com`, `nsx2.domainesia.com` (08:00 UTC). Per 08:43 UTC DNS publik masih `REFUSED` / zone belum ter-load — perlu record ditambahkan atau bantuan support DomaiNesia. |
| Include | DNS Management gratis 2 tahun |

**Todo sekarang:**
1. Klik link verifikasi di email DomaiNesia (dalam **3×24 jam** sejak lunas) agar domain tidak ditangguhkan.
2. Pilih hosting untuk landing page, lalu ubah nameserver / tambahkan record DNS sesuai bagian "Cara pasang domain" di bawah.

### Rekomendasi struktur

- `dicetaksaja.id` → landing page ini
- `blog.dicetaksaja.id` → blog Blogger (custom domain)
- `www.dicetaksaja.id` → redirect ke `dicetaksaja.id`

## Cara pasang domain

### Opsi A — Landing page di GitHub Pages / Netlify / Vercel (paling mudah)

1. Beli domain di **DomaiNesia** (sudah dipilih; keranjang sudah disiapkan). Catatan: Cloudflare Registrar **tidak mendukung** ekstensi `.id`.
2. Repo sudah ada dan kosong: **https://github.com/anagroupOK/Anagroup-Printing** (branch `main`). Karena `git` tidak terinstall di komputer ini, upload lewat web: **Add file → Upload files**, lalu pilih semua isi folder ini (`index.html`, `styles.css`, `script.js`, `CNAME`, `README.md`) → **Commit changes**.
   - **Jangan hapus/ubah isi file `CNAME`** — sudah berisi `dicetaksaja.id` dan dipakai GitHub Pages untuk custom domain.
3. Aktifkan GitHub Pages: **Settings → Pages → Source: Deploy from a branch → main / (root)** → Save.
4. Di DomaiNesia, tambahkan DNS:
   - `A` `@` → `185.199.108.153`
   - `A` `@` → `185.199.109.153`
   - `A` `@` → `185.199.110.153`
   - `A` `@` → `185.199.111.153`
   - `CNAME` `www` → `anagroupOK.github.io`
   - `CNAME` `blog` → `ghs.google.com` (untuk Blogger)
5. Setelah DNS aktif, centang **Enforce HTTPS** di GitHub Pages.

Untuk Netlify/Vercel, upload folder ini lalu ikuti instruksi DNS yang muncul di dashboard (biasanya cukup 1 record `A` atau `CNAME`).

### Opsi B — Tetap pakai Blogger dengan domain sendiri

1. Di Blogger: **Settings → Publishing → Custom Domain → + Set up a third-party URL for your blog**.
2. Masukkan `blog.dicetaksaja.id` (disarankan pakai subdomain agar root tetap dipakai landing page).
3. Di DNS tambahkan untuk subdomain (ikuti juga petunjuk yang muncul di dashboard Blogger):
   - `CNAME` `blog` → `ghs.google.com`
4. Klik **Save** di Blogger, lalu tunggu propagasi (bisa sampai 48 jam).
   - Catatan: 4 record `A` (`216.239.32.21`, `216.239.34.21`, `216.239.36.21`, `216.239.38.21`) dipakai kalau memetakan **root domain** langsung ke Blogger. Karena root dipakai landing page, cukup CNAME subdomain `blog`.

## Sebelum tayang

- [ ] Ganti semua kemunculan `dicetaksaja.id` di `index.html` (canonical, og:url, JSON-LD) kalau nama domain berubah.
- [ ] Sesuaikan nomor WhatsApp `6281213053872` di semua tombol WA (tips: cari "wa.me/").
- [ ] Cek lagi estimasi harga (`Rp150`, `Rp250`) dengan daftar harga terbaru.
- [ ] Ganti testimoni dengan izin/atribusi pelanggan bila diperlukan.
- [ ] Tambahkan foto-foto hasil cetak asli untuk memperkuat kepercayaan (widget hero saat ini sengaja dibuat CSS agar ringan).
- [ ] Uji di HP: menu, tombol WA, dan kecepatan (Lighthouse).

## Menjalankan lokal

Tidak perlu build. Buka `index.html` langsung di browser, atau:

```powershell
cd "C:\Users\&RA-pc\dicetaksaja-landing"
python -m http.server 8080
```

Lalu buka http://localhost:8080.
