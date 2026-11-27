# SEO Health Check — dicetaksaja.id

Audit terakhir: **27 November 2026** · Property GSC: `sc-domain:dicetaksaja.id`

## Ringkasan eksekutif

| Aspek | Status | Catatan |
|---|---|---|
| Indexing landing page | ✅ | URL Inspection: "URL ada di Google" + "Halaman diindeks" |
| Sitemap | ✅ | 36 URL, status Sukses, terakhir dibaca 25 Nov |
| Semua URL sitemap | ✅ | 36 URL terdeteksi; 35/35 artikel sehat (cek 26 Nov 17.56 WIB) |
| Schema landing | ✅ | LocalBusiness + WebSite + FAQPage, tanpa keywords meta |
| Schema 30 artikel | ✅ | Semua `BlogPosting`, rating/review palsu sudah dihapus (24 Nov) |
| Judul artikel | ✅ | 2 artikel "[Tanpa judul]" sudah diperbaiki (24 Nov) |
| Posisi brand query | ✅ | `dicetaksaja.id` = hasil organik #1 untuk "DicetakSaja Rawamangun" |
| Posisi keyword lokal | ⚠️ | Tidak masuk halaman 1 untuk "percetakan rawamangun jakarta timur" |
| Google Business Profile | ✅ | Kedua listing Anagroup memakai `https://dicetaksaja.id/` (terverifikasi live 26 Nov) |
| Konsistensi NAP | ⚠️ | Alamat schema beda dengan GBP — sudah diselaraskan 24 Nov |
| Cross-link antar domain | ✅ | `www.anagroup.id ⇄ dicetaksaja.id ⇄ print.anagroup.id` sudah live (25 Nov); `www.anagroup.id` juga menaut ke `print.anagroup.id` |
| Trafik | ⚠️ | 19 tayangan, posisi rata-rata 25,6, 0 klik (19–24 Nov 2026, domain baru) |

## Temuan & perbaikan 24 November 2026

1. **Sitemap stale di GSC** — GSC masih membaca versi lama (6 halaman). Sitemap dihapus lalu dikirim ulang → kini **22 halaman ditemukan**, status Sukses.
2. **Schema rating/review palsu di tema Blogger** — tema otomatis menyisipkan `aggregateRating` 4.5, `reviewCount` 1, dan review anonim "Pengunjung" pada artikel. Ini memicu error *"Listingan penjual: 1 item tidak valid"* dan melanggar kebijakan testimoni. **Perbaikan:** semua post kini memakai `BlogPosting`; verifikasi live: tidak ada `Product`, `aggregateRating`, `review`, atau `no-image.png`.
3. **2 artikel tanpa judul** — `scan-dokumen-rawamangun-a4f4-cepat` dan `cetak-buku-yasin-rawamangun` bertajuk "[Tanpa judul]". Judul sudah diisi dan terverifikasi live.
4. **Alamat NAP tidak konsisten** — schema memakai "Jalan Balai Pustaka Baru, RW 07" sementara GBP mencantumkan "Jl. Balai Pustaka Baru No. 13, RT.4/RW.15, Rawamangun". Schema + alamat tampilan sudah diselaraskan dengan GBP.
5. **Web GBP tidak mengarah ke landing baru** — masih `www.anagroup.id`. Perlu diubah manual (lihat prioritas di bawah).
6. **Request indexing** dikirim ulang untuk root dan artikel #11 setelah perbaikan schema.

## Temuan & perbaikan 25 November 2026

1. **Cross-link 3 domain sudah dipasang dan diverifikasi live.**
   - `dicetaksaja.id` → `www.anagroup.id` + `print.anagroup.id` (footer + `sameAs`).
   - `www.anagroup.id` → `dicetaksaja.id` + `print.anagroup.id` lewat WPCode snippet **Anagroup Crosslink Network** (ID `8314`, HTML, Active, Site Wide Footer). Terverifikasi di homepage dan `/kontak/`.
   - `print.anagroup.id` → `dicetaksaja.id` + `www.anagroup.id` (footer + `sameAs`), setelah upload `index.html` via cPanel File Manager ke `/home/anagroup/public_html/print/index.html`.
2. Tautan memakai HTTPS dan anchor deskriptif; tidak ada `target="_blank"` di blok footer `www.anagroup.id` agar sinyal tautan tetap mengalami alami.

### Audit lanjutan 25 November 2026 (12.29 WIB)

1. **Health check otomatis: 0 masalah** — 5/5 URL inti 200, 22/22 URL sitemap 200, 21/21 artikel sehat. Laporan: `seo-reports/seo-check-20261125-1231.txt`.
2. **Lighthouse live `https://dicetaksaja.id/`: SEO 100, Accessibility 100, Best Practices 100**, tanpa failure. Tidak ada perbaikan teknis lagi di landing page.
3. **Sitemap `lastmod` tidak akurat (sudah diperbaiki).** 15 artikel bertanda 26 Nov–7 Des 2026 (masa depan), padahal `article:published_time` asli: #1–#10 = **22 Nov 2026**, #11–#16 = **24 Nov 2026**. Root diubah ke **25 Nov 2026** (setelah crosslink). `content-plan.md` juga disamakan dengan tanggal publish asli.
4. **Nomor WA konsisten** — semua 12 CTA di landing dan 2 CTA di masing-masing 30 draft memakai `wa.me/6281213053872`; tidak ada `wa.link`/nomor lama di file proyek.
5. **Crosslink masih live** (dicek ulang dengan cache-buster): homepage `www.anagroup.id` dan `print.anagroup.id` memuat tautan ke `https://dicetaksaja.id/`.
6. **Sesi Google aktif.** GSC, Blogger, dan Maps sudah terbaca. Ke-30 artikel target sudah terbit; 5 permalink `blog-post_*` lama sengaja dipertahankan agar tidak memutus URL yang sudah terindeks.
7. **GBP masih belum diperbaiki.** Google Maps live menampilkan `Percetakan Anagroup` 4,7/5 (13 ulasan), Website `anagroup.id`, booking `wa.link` — belum `https://dicetaksaja.id/`. Local Pack untuk query brand menampilkan percetakan lain (4,8/5, 68 ulasan), bukan AnaGroup. Kesenjangan ulasan/sitasi masih menjadi penghambat utama page 1.
8. **Indeksasi sudah baik.** `site:dicetaksaja.id` menampilkan landing + artikel blog (canonical HTTPS benar di semua 30 artikel target, `BlogPosting` aktif, `Product`/rating palsu tidak ada). `site:blog.dicetaksaja.id` kosong karena Google mengelola subdomain di bawah domain property — ini normal.
9. **Pipeline 30 artikel sudah rampung.** Semua intro 80–120 kata, 4 FAQ, CTA WA, tautan internal HTTPS, dan deskripsi 140–160 karakter sudah terbit. Metadata lengkap (URL live, deskripsi, label) ada di `blog-drafts/PUBLISH-META.md`. Tidak ada harga di luar daftar final, rating, atau testimoni buatan.

## Posisi di Google saat ini (penelusuran langsung)

- `"DicetakSaja" Rawamangun` → **landing page muncul sebagai hasil web organik pertama**. Blog articles juga tampil (Percetakan Rawamangun, Booklet, Spanduk, Fotocopy, Kartu Nama, dll.). Namun **AI Overview dan Local Pack masih menampilkan kompetitor** (Delisa, Prismacom, Nanda, dll.).
- `"AnaGroup Printing" Rawamangun` → **`www.anagroup.id` dan Instagram yang muncul**, `dicetaksaja.id` belum muncul sama sekali.
- `percetakan rawamangun jakarta timur` → **belum masuk halaman 1**; hasil didominasi iklan + Local Pack dengan ulasan (228, 221, 102 review).

Kesimpulan: fondasi teknis sudah sehat. Penghambat utama masuk page 1 bukan lagi error teknis, melainkan **kekuatan sinyal lokal** (GBP, ulasan, konsistensi domain, dan backlink).

## Prioritas untuk masuk Page 1

### P0 — paling berdampak, bisa dilakukan sekarang
1. **Arahkan Website di Google Business Profile ke `https://dicetaksaja.id/`** (atau tambahkan sebagai link appointment). Saat ini GBP mengirim sinyal ke `www.anagroup.id`. Sources: Google Maps → edit profil → Website.
2. **Samakan NAP di semua tempat**: `Jl. Balai Pustaka Baru No. 13, RT.4/RW.15, Rawamangun, Jakarta Timur 13220` + WA `0812-1305-3872`. Cek GBP, Instagram, Facebook, `anagroup.id`, `print.anagroup.id`, dan `dicetaksaja.id`.
3. **Minta ulasan GBP dari pelanggan nyata** (target 25–50 ulasan). Kompetitor di page 1 punya 76–228 ulasan; DicetakSaja baru 13. **Jangan beli/membuat ulasan palsu.**
4. ~~**Pasang tautan silang**: `www.anagroup.id` → `dicetaksaja.id` (WPCode snippet baru), `print.anagroup.id` → `dicetaksaja.id`, dan sebaliknya.~~ **Selesai 25 Nov** — ketiga domain saling menaut; tidak perlu diulang kecuali template/footer berubah.

### P1 — 2–4 minggu
5. **#1–#30 sudah 30/30 terbit** sesuai `content-plan.md`; tidak ada artikel baru yang dijadwalkan hari ini.
6. Perbaiki permalink `blog-post_*` (#1, #5, #8, #11, #15) ke slug keyword saat sesi Blogger stabil; update semua referensi.
7. Bangun sitasi lokal: direktori usaha Jakarta Timur, Google Maps, Instagram, Facebook, sidebar komunitas Rawamangun.
8. Tambah internal link kontekstual dari artikel ke halaman layanan landing (bukan hanya footer).

### P2 — pendukung
9. Pasang testimoni **hanya dengan izin tertulis** + atribusi nama/inisial (slot sudah tersedia di landing).
10. Pantau Data Web Inti (masih "Tidak ada data") — pastikan LCP < 2,5 dtk dan CLS < 0,1.
11. Evaluasi iklan Google Ads untuk keyword lokal saat organik masih naik (cepat, tapi bayar).

## Cara menjalankan monitoring

```powershell
powershell -ExecutionPolicy Bypass -File .\seo-monitor.ps1
```

Script ini memeriksa:
- HTTP status URL inti (`/`, `robots.txt`, `sitemap.xml`, `www`, blog)
- Jumlah URL di sitemap + status HTTP masing-masing
- Title, deskripsi, H1, alt gambar, CTA WA, meta keywords, schema, canonical di landing
- Judul/H1 kosong, schema Product/rating palsu, CTA WA, dan internal link di 30 artikel target

Hasil tersimpan otomatis di `seo-reports/seo-check-YYYYMMDD-HHMM.txt`.

Jadwal yang disarankan: **cek setiap hari setelah publish artikel**, plus cek GSC tiap 3 hari (imresi, posisi, coverage).

## Tindak lanjut 25 November 2026 (sesi lanjutan 17.12 WIB)

1. **Permintaan indexing GSC: 12 dari 15 URL berhasil masuk antrean crawl prioritas.**
   - Berhasil: `percetakan-24-jam-jakarta-timur.html`, `blog-post_721.html`, `blog-post_25.html`, `cetak-sertifikat-rawamangun-seminar.html`, `blog-post_209.html`, `cetak-kartu-member-pvc-rawamangun.html`, `cetak-lanyard-rawamangun-paket-id-card.html`, `cetak-stiker-vinyl-tahan-air-rawamangun.html`, `cetak-packaging-umkm-rawamangun-box.html`, `cetak-flyer-promosi-rawamangun-cepat.html`, `cetak-kalender-mejadinding-rawamangun.html`, `fotocopy-warna-rawamangun-hasil-tajam.html`.
   - **Tertunda karena kuota harian GSC** (jangan diulang hari ini, lanjut 26 Nov): `print-dokumen-online-rawamangun-kirim.html`, `cetak-undangan-pernikahan-rawamangun.html`, dan `https://dicetaksaja.id/`.
   - Sitemap 36 URL sudah dikirim ulang 25 Nov dan berstatus **Sukses**; GSC masih menampilkan "Memproses data, harap periksa kembali setelah sekitar satu hari".
2. **Coverage dan Performance GSC sudah dicek ulang setelah login.** Coverage/"Pengindeksan halaman" masih **"Memproses data, harap periksa kembali setelah sekitar satu hari"**. Performance (19–23 Nov 2026, diperbarui 3,5 jam lalu): **0 klik, 10 tayangan, CTR 0%, posisi rata-rata 34,9**; kueri teratas semuanya 1 tayangan tanpa klik.
3. **GBP sudah diperbarui dari akun pemilik yang benar.** Akun `andra.aya09@gmail.com` (`business.google.com/u/1`) memiliki 2 listing Anagroup terverifikasi. Website **AnaGroup Printing** (Maps: **Percetakan Anagroup**, 4,7/5, 13 ulasan) diubah dari `https://www.anagroup.id/` menjadi `https://dicetaksaja.id/`. Website **Fotocopy Percetakan Anagroup** juga diubah dari `http://www.dicetaksaja.com/` menjadi `https://dicetaksaja.id/`. Pada **26 Nov 2026 ~18.00 WIB**, review Google selesai: kedua listing sudah menampilkan **`https://dicetaksaja.id/`** sebagai **Situs TERBARU** di halaman Edit profil. Akun `anagroupprinting@gmail.com` sengaja tidak diubah karena mengelola bisnis lain (**Print Buku Murah dan Cetak Buku Cepat**).
4. **9 draft Blogger sudah dibersihkan.** Dua draft baru adalah duplikat #17/#18 yang sudah live; tujuh lainnya kosong/lama. Status kini **Draf 0, Dipublikasikan 126, Sampah 2** — tidak ada artikel live yang terhapus.
5. **Health check terbaru 17.11 WIB: 0 masalah** — 5/5 URL inti 200, sitemap 36 URL, 35/35 artikel sehat. Laporan: `seo-reports/seo-check-20261125-1712.txt`.
6. **Commit GitHub selesai.** `SEO-HEALTH.md` → `0d08bf3` lalu `8c79dd0`, laporan 15:48 → `9a3bf43`, laporan 17:12 → `5b00963` (plus `d542576` untuk menghapus folder salah dari percobaan pertama). GitHub Pages build **#82 dan #83 completed successfully**; pembaruan status GBP di-commit setelahnya.

## Tindak lanjut 26 November 2026

1. **Health check 17.56 WIB: 0 masalah.** 5/5 URL inti `200`, sitemap 36 URL, **35/35 artikel sehat**, 42 gambar dengan alt lengkap, 12 tautan WA, 49 tautan blog, tanpa meta keywords. Laporan: `seo-reports/seo-check-20261126-1759.txt`.
2. **GBP terverifikasi live.** Kedua listing Anagroup (`AnaGroup Printing` / Maps `Percetakan Anagroup`, dan `Fotocopy Percetakan Anagroup`) kini memakai Website `https://dicetaksaja.id/` sebagai data TERBARU.
3. **Request indexing GSC selesai dari akun pemilik.** Setelah login sebagai `anagroupprinting@gmail.com`, dua URL tersisa berhasil dikirim dan GSC mengonfirmasi **"Pengindeksan diminta — URL telah ditambahkan ke antrean crawl prioritas"**: `https://blog.dicetaksaja.id/2026/11/print-dokumen-online-rawamangun-kirim.html` dan `https://blog.dicetaksaja.id/2026/11/cetak-undangan-pernikahan-rawamangun.html`. URL ketiga, `https://dicetaksaja.id/`, ternyata **sudah diindeks** ("URL ada di Google", "Halaman diindeks"), jadi tidak perlu diminta lagi. Total request indexing: **14 dari 14 URL target** (12 pada 25 Nov + 2 pada 26 Nov).
4. **Commit GitHub selesai.** Laporan `seo-check-20261126-1759.txt` → `2336700`, pembaruan status GBP → `42fbb51`. GitHub Pages build **#85 dan #86 completed successfully**.
5. **Performance GSC membaik.** Data 19–24 Nov 2026 (terakhir diperbarui ~3 jam lalu): **0 klik, 19 tayangan, CTR 0%, posisi rata-rata 25,6** (sebelumnya 10 tayangan dan posisi 34,9). Tujuh kueri semuanya 1 tayangan tanpa klik: `fotocopy dan print 24 jam jakarta timur`, `cetak spanduk 24 jam`, `cetak buku agenda`, `cetak nota rawamangun`, `dicetak`, `percetakan jakarta timur`, `cetak spanduk berkualitas jakarta`.
6. **Sitemap & Coverage.** `https://dicetaksaja.id/sitemap.xml` tetap **Sukses**, 36 URL ditemukan, terakhir dibaca 25 Nov 2026. Laporan "Pengindeksan halaman" masih **"Memproses data, harap periksa kembali setelah sekitar satu hari"**; ini normal setelah sitemap dikirim ulang.

## Tindak lanjut 27 November 2026

1. **Health check 11.03 WIB: 0 masalah.** 5/5 URL inti `200`, sitemap 36 URL, **35/35 artikel sehat**, 42 gambar dengan alt lengkap, 12 tautan WA, 49 tautan blog, tanpa meta keywords. Laporan: `seo-reports/seo-check-20261127-1106.txt`.
2. **Crosslink 3 domain masih live.** `dicetaksaja.id` → `www.anagroup.id` + `print.anagroup.id`; `www.anagroup.id` → `dicetaksaja.id` + `print.anagroup.id`; `print.anagroup.id` → `dicetaksaja.id` + `www.anagroup.id`. Semua `200`.
3. **Indeks publik bertambah.** Pencarian `site:dicetaksaja.id` menampilkan landing page + **10 artikel** (termasuk `blog-post_24`, `blog-post_320`, `blog-post_950`, `blog-post_585`, `blog-post_721`, `blog-post_931`, `blog-post_25`, serta artikel lama spanduk/cutting sticker).
4. **Cuplikan rating lama masih muncul di hasil penelusuran.** Google menampilkan "4,5(1)" pada beberapa artikel, tetapi pemeriksaan langsung HTML live (`blog-post_950`, `blog-post_585`, `blog-post_721`, `blog-post_24`) menunjukkan **0 `aggregateRating`, 0 `review`, 0 `Product`, 1 `BlogPosting`, 0 `no-image.png`**. Ini data rich snippet lama dari crawl sebelum perbaikan 24 Nov, bukan markup yang terpasang sekarang; akan hilang setelah Google crawl ulang.
5. **GSC Coverage sudah tersedia lagi.** Data terbaru: **94 halaman terindeks**, **153 tidak diindeks** (8 alasan): alternatif dengan kanonis tepat 68, pengalihan 21, duplikat tanpa kanonis pengguna 20, 404 sebanyak 4, diblokir robots.txt 3, kesalahan pengalihan 2, *di-crawl - saat ini tidak diindeks* 24, *ditemukan - saat ini tidak diindeks* 11. Sitemap tetap Sukses 36 URL (terakhir diperbarui 23/11/26).
6. **Performance tidak berubah dari 26 Nov.** 19–24 Nov 2026: **0 klik, 19 tayangan, CTR 0%, posisi rata-rata 25,6**, 7 kueri masing-masing 1 tayangan.
7. **GBP diverifikasi ulang.** Kedua listing Anagroup masih memakai `https://dicetaksaja.id/` sebagai Situs TERBARU di halaman Edit profil.
8. **Commit laporan 27 Nov selesai.** `seo-reports/seo-check-20261127-1106.txt` → `f3f9337`; pembaruan GSC/GBP di `SEO-HEALTH.md` → `7ef67af`; GitHub Pages build **#90 completed successfully**.
9. **Perbaikan konversi & kepatuhan 27 Nov (siap commit).** Dihapus klaim "4.9/5 dari pelanggan" + inisial avatar palsu dan 3 kutipan testimoni 5 bintang tanpa izin tertulis; diganti kartu galeri 42 hasil cetak asli. Harga scan `Rp250/lembar` (estimasi lama) diganti "konfirmasi WA" di 3 tempat; kini hanya 4 harga final eksplisit yang tersisa. Ditambahkan 17 tombol "Pesan via WA" dengan pesan khusus per layanan di kartu layanan (total tautan WA naik dari 12 ke 29). CSS `.service-order` ditambahkan supaya CTA menonjol.

## Catatan penting

- Harga final yang boleh disebut eksplisit: fotocopy A4 `Rp200/lembar`, buku umroh `Rp12.000`, Print Digital A3+ `Rp1.750`, kartu nama `Rp35.000`. Layanan lain: "mulai dari / konfirmasi WA".
- Dilarang memasang testimoni, rating, atau klaim tanpa izin dan bukti.
- `http://` dan `www` saat ini menyajikan konten identik dengan canonical ke `https://dicetaksaja.id/` (aman, tapi redirect 301 lebih ideal jika bisa diatur di DNS/hosting).
