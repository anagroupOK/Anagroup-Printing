# SEO Health Check â€” dicetaksaja.id

Audit terakhir: **25 November 2026** Â· Property GSC: `sc-domain:dicetaksaja.id`

## Ringkasan eksekutif

| Aspek | Status | Catatan |
|---|---|---|
| Indexing landing page | âœ… | URL Inspection: "URL ada di Google" + "Halaman diindeks" |
| Sitemap | âœ… | 22 URL, status Sukses, dibaca 24 Nov (sebelumnya cuma 6) |
| Semua URL sitemap | âœ… | 22/22 HTTP 200 |
| Schema landing | âœ… | LocalBusiness + WebSite + FAQPage, tanpa keywords meta |
| Schema 16 artikel | âœ… | Semua `BlogPosting`, rating/review palsu sudah dihapus (24 Nov) |
| Judul artikel | âœ… | 2 artikel "[Tanpa judul]" sudah diperbaiki (24 Nov) |
| Posisi brand query | âœ… | `dicetaksaja.id` = hasil organik #1 untuk "DicetakSaja Rawamangun" |
| Posisi keyword lokal | âš ï¸ | Tidak masuk halaman 1 untuk "percetakan rawamangun jakarta timur" |
| Google Business Profile | âš ï¸ | Ada (4,7/5, 13 ulasan) tapi website-nya mengarah ke `www.anagroup.id` |
| Konsistensi NAP | âš ï¸ | Alamat schema beda dengan GBP â€” sudah diselaraskan 24 Nov |
| Cross-link antar domain | âœ… | `www.anagroup.id â‡„ dicetaksaja.id â‡„ print.anagroup.id` sudah live (25 Nov); `www.anagroup.id` juga menaut ke `print.anagroup.id` |
| Trafik | âš ï¸ | 3 impresi, posisi rata-rata 26, 0 klik (domain baru) |

## Temuan & perbaikan 24 November 2026

1. **Sitemap stale di GSC** â€” GSC masih membaca versi lama (6 halaman). Sitemap dihapus lalu dikirim ulang â†’ kini **22 halaman ditemukan**, status Sukses.
2. **Schema rating/review palsu di tema Blogger** â€” tema otomatis menyisipkan `aggregateRating` 4.5, `reviewCount` 1, dan review anonim "Pengunjung" pada artikel. Ini memicu error *"Listingan penjual: 1 item tidak valid"* dan melanggar kebijakan testimoni. **Perbaikan:** semua post kini memakai `BlogPosting`; verifikasi live: tidak ada `Product`, `aggregateRating`, `review`, atau `no-image.png`.
3. **2 artikel tanpa judul** â€” `scan-dokumen-rawamangun-a4f4-cepat` dan `cetak-buku-yasin-rawamangun` bertajuk "[Tanpa judul]". Judul sudah diisi dan terverifikasi live.
4. **Alamat NAP tidak konsisten** â€” schema memakai "Jalan Balai Pustaka Baru, RW 07" sementara GBP mencantumkan "Jl. Balai Pustaka Baru No. 13, RT.4/RW.15, Rawamangun". Schema + alamat tampilan sudah diselaraskan dengan GBP.
5. **Web GBP tidak mengarah ke landing baru** â€” masih `www.anagroup.id`. Perlu diubah manual (lihat prioritas di bawah).
6. **Request indexing** dikirim ulang untuk root dan artikel #11 setelah perbaikan schema.

## Temuan & perbaikan 25 November 2026

1. **Cross-link 3 domain sudah dipasang dan diverifikasi live.**
   - `dicetaksaja.id` â†’ `www.anagroup.id` + `print.anagroup.id` (footer + `sameAs`).
   - `www.anagroup.id` â†’ `dicetaksaja.id` + `print.anagroup.id` lewat WPCode snippet **Anagroup Crosslink Network** (ID `8314`, HTML, Active, Site Wide Footer). Terverifikasi di homepage dan `/kontak/`.
   - `print.anagroup.id` â†’ `dicetaksaja.id` + `www.anagroup.id` (footer + `sameAs`), setelah upload `index.html` via cPanel File Manager ke `/home/anagroup/public_html/print/index.html`.
2. Tautan memakai HTTPS dan anchor deskriptif; tidak ada `target="_blank"` di blok footer `www.anagroup.id` agar sinyal tautan tetap mengalami alami.

### Audit lanjutan 25 November 2026 (12.29 WIB)

1. **Health check otomatis: 0 masalah** â€” 5/5 URL inti 200, 22/22 URL sitemap 200, 21/21 artikel sehat. Laporan: `seo-reports/seo-check-20261125-1231.txt`.
2. **Lighthouse live `https://dicetaksaja.id/`: SEO 100, Accessibility 100, Best Practices 100**, tanpa failure. Tidak ada perbaikan teknis lagi di landing page.
3. **Sitemap `lastmod` tidak akurat (sudah diperbaiki).** 15 artikel bertanda 26 Novâ€“7 Des 2026 (masa depan), padahal `article:published_time` asli: #1â€“#10 = **22 Nov 2026**, #11â€“#16 = **24 Nov 2026**. Root diubah ke **25 Nov 2026** (setelah crosslink). `content-plan.md` juga disamakan dengan tanggal publish asli.
4. **Nomor WA konsisten** â€” semua 12 CTA di landing dan 2 CTA di masing-masing 18 draft memakai `wa.me/6281213053872`; tidak ada `wa.link`/nomor lama di file proyek.
5. **Crosslink masih live** (dicek ulang dengan cache-buster): homepage `www.anagroup.id` dan `print.anagroup.id` memuat tautan ke `https://dicetaksaja.id/`.
6. **Sesi Google sudah logout.** GSC dan Blogger mengarah ke halaman login, jadi pengecekan Performance/Coverage, perbaikan permalink `blog-post_*`, dan publish #17/#18 **tertunda sampai login ulang**.
7. **GBP masih belum diperbaiki.** Google Maps live menampilkan `Percetakan Anagroup` 4,7/5 (13 ulasan), Website `anagroup.id`, booking `wa.link` â€” belum `https://dicetaksaja.id/`. Local Pack untuk query brand menampilkan percetakan lain (4,8/5, 68 ulasan), bukan AnaGroup. Kesenjangan ulasan/sitasi masih menjadi penghambat utama page 1.
8. **Indeksasi sudah baik.** `site:dicetaksaja.id` menampilkan landing + artikel blog (canonical HTTPS benar di semua 16 artikel, `BlogPosting` aktif, `Product`/rating palsu tidak ada). `site:blog.dicetaksaja.id` kosong karena Google mengelola subdomain di bawah domain property â€” ini normal.

## Posisi di Google saat ini (penelusuran langsung)

- `"DicetakSaja" Rawamangun` â†’ **landing page muncul sebagai hasil web organik pertama**. Blog articles juga tampil (Percetakan Rawamangun, Booklet, Spanduk, Fotocopy, Kartu Nama, dll.). Namun **AI Overview dan Local Pack masih menampilkan kompetitor** (Delisa, Prismacom, Nanda, dll.).
- `"AnaGroup Printing" Rawamangun` â†’ **`www.anagroup.id` dan Instagram yang muncul**, `dicetaksaja.id` belum muncul sama sekali.
- `percetakan rawamangun jakarta timur` â†’ **belum masuk halaman 1**; hasil didominasi iklan + Local Pack dengan ulasan (228, 221, 102 review).

Kesimpulan: fondasi teknis sudah sehat. Penghambat utama masuk page 1 bukan lagi error teknis, melainkan **kekuatan sinyal lokal** (GBP, ulasan, konsistensi domain, dan backlink).

## Prioritas untuk masuk Page 1

### P0 â€” paling berdampak, bisa dilakukan sekarang
1. **Arahkan Website di Google Business Profile ke `https://dicetaksaja.id/`** (atau tambahkan sebagai link appointment). Saat ini GBP mengirim sinyal ke `www.anagroup.id`. Sources: Google Maps â†’ edit profil â†’ Website.
2. **Samakan NAP di semua tempat**: `Jl. Balai Pustaka Baru No. 13, RT.4/RW.15, Rawamangun, Jakarta Timur 13220` + WA `0812-1305-3872`. Cek GBP, Instagram, Facebook, `anagroup.id`, `print.anagroup.id`, dan `dicetaksaja.id`.
3. **Minta ulasan GBP dari pelanggan nyata** (target 25â€“50 ulasan). Kompetitor di page 1 punya 76â€“228 ulasan; DicetakSaja baru 13. **Jangan beli/membuat ulasan palsu.**
4. ~~**Pasang tautan silang**: `www.anagroup.id` â†’ `dicetaksaja.id` (WPCode snippet baru), `print.anagroup.id` â†’ `dicetaksaja.id`, dan sebaliknya.~~ **Selesai 25 Nov** â€” ketiga domain saling menaut; tidak perlu diulang kecuali template/footer berubah.

### P1 â€” 2â€“4 minggu
5. Lanjut **#17â€“#30** sesuai `content-plan.md` (1 artikel/hari) â€” sudah 16/30.
6. Perbaiki permalink `blog-post_*` (#1, #5, #8, #11, #15) ke slug keyword saat sesi Blogger stabil; update semua referensi.
7. Bangun sitasi lokal: direktori usaha Jakarta Timur, Google Maps, Instagram, Facebook, sidebar komunitas Rawamangun.
8. Tambah internal link kontekstual dari artikel ke halaman layanan landing (bukan hanya footer).

### P2 â€” pendukung
9. Pasang testimoni **hanya dengan izin tertulis** + atribusi nama/inisial (slot sudah tersedia di landing).
10. Pantau Data Web Inti (masih "Tidak ada data") â€” pastikan LCP < 2,5 dtk dan CLS < 0,1.
11. Evaluasi iklan Google Ads untuk keyword lokal saat organik masih naik (cepat, tapi bayar).

## Cara menjalankan monitoring

```powershell
powershell -ExecutionPolicy Bypass -File .\seo-monitor.ps1
```

Script ini memeriksa:
- HTTP status URL inti (`/`, `robots.txt`, `sitemap.xml`, `www`, blog)
- Jumlah URL di sitemap + status HTTP masing-masing
- Title, deskripsi, H1, alt gambar, CTA WA, meta keywords, schema, canonical di landing
- Judul/H1 kosong, schema Product/rating palsu, CTA WA, dan internal link di 16 artikel

Hasil tersimpan otomatis di `seo-reports/seo-check-YYYYMMDD-HHMM.txt`.

Jadwal yang disarankan: **cek setiap hari setelah publish artikel**, plus cek GSC tiap 3 hari (imresi, posisi, coverage).

## Catatan penting

- Harga final yang boleh disebut eksplisit: fotocopy A4 `Rp200/lembar`, buku umroh `Rp12.000`, Print Digital A3+ `Rp1.750`, kartu nama `Rp35.000`. Layanan lain: "mulai dari / konfirmasi WA".
- Dilarang memasang testimoni, rating, atau klaim tanpa izin dan bukti.
- `http://` dan `www` saat ini menyajikan konten identik dengan canonical ke `https://dicetaksaja.id/` (aman, tapi redirect 301 lebih ideal jika bisa diatur di DNS/hosting).
