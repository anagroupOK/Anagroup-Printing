# SEO Health Check — dicetaksaja.id

Audit terakhir: **24 November 2026** · Property GSC: `sc-domain:dicetaksaja.id`

## Ringkasan eksekutif

| Aspek | Status | Catatan |
|---|---|---|
| Indexing landing page | ✅ | URL Inspection: "URL ada di Google" + "Halaman diindeks" |
| Sitemap | ✅ | 22 URL, status Sukses, dibaca 24 Nov (sebelumnya cuma 6) |
| Semua URL sitemap | ✅ | 22/22 HTTP 200 |
| Schema landing | ✅ | LocalBusiness + WebSite + FAQPage, tanpa keywords meta |
| Schema 16 artikel | ✅ | Semua `BlogPosting`, rating/review palsu sudah dihapus (24 Nov) |
| Judul artikel | ✅ | 2 artikel "[Tanpa judul]" sudah diperbaiki (24 Nov) |
| Posisi brand query | ✅ | `dicetaksaja.id` = hasil organik #1 untuk "DicetakSaja Rawamangun" |
| Posisi keyword lokal | ⚠️ | Tidak masuk halaman 1 untuk "percetakan rawamangun jakarta timur" |
| Google Business Profile | ⚠️ | Ada (4,7/5, 13 ulasan) tapi website-nya mengarah ke `www.anagroup.id` |
| Konsistensi NAP | ⚠️ | Alamat schema beda dengan GBP — sudah diselaraskan 24 Nov |
| Cross-link antar domain | ⚠️ | `anagroup.id`, `print.anagroup.id`, `dicetaksaja.id` belum saling menaut |
| Trafik | ⚠️ | 3 impresi, posisi rata-rata 26, 0 klik (domain baru) |

## Temuan & perbaikan 24 November 2026

1. **Sitemap stale di GSC** — GSC masih membaca versi lama (6 halaman). Sitemap dihapus lalu dikirim ulang → kini **22 halaman ditemukan**, status Sukses.
2. **Schema rating/review palsu di tema Blogger** — tema otomatis menyisipkan `aggregateRating` 4.5, `reviewCount` 1, dan review anonim "Pengunjung" pada artikel. Ini memicu error *"Listingan penjual: 1 item tidak valid"* dan melanggar kebijakan testimoni. **Perbaikan:** semua post kini memakai `BlogPosting`; verifikasi live: tidak ada `Product`, `aggregateRating`, `review`, atau `no-image.png`.
3. **2 artikel tanpa judul** — `scan-dokumen-rawamangun-a4f4-cepat` dan `cetak-buku-yasin-rawamangun` bertajuk "[Tanpa judul]". Judul sudah diisi dan terverifikasi live.
4. **Alamat NAP tidak konsisten** — schema memakai "Jalan Balai Pustaka Baru, RW 07" sementara GBP mencantumkan "Jl. Balai Pustaka Baru No. 13, RT.4/RW.15, Rawamangun". Schema + alamat tampilan sudah diselaraskan dengan GBP.
5. **Web GBP tidak mengarah ke landing baru** — masih `www.anagroup.id`. Perlu diubah manual (lihat prioritas di bawah).
6. **Request indexing** dikirim ulang untuk root dan artikel #11 setelah perbaikan schema.

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
4. **Pasang tautan silang**: `www.anagroup.id` → `dicetaksaja.id` (WPCode snippet baru), `print.anagroup.id` → `dicetaksaja.id`, dan sebaliknya. Ini menyatukan otoritas 3 domain.

### P1 — 2–4 minggu
5. Lanjut **#17–#30** sesuai `content-plan.md` (1 artikel/hari) — sudah 16/30.
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
- Judul/H1 kosong, schema Product/rating palsu, CTA WA, dan internal link di 16 artikel

Hasil tersimpan otomatis di `seo-reports/seo-check-YYYYMMDD-HHMM.txt`.

Jadwal yang disarankan: **cek setiap hari setelah publish artikel**, plus cek GSC tiap 3 hari (imresi, posisi, coverage).

## Catatan penting

- Harga final yang boleh disebut eksplisit: fotocopy A4 `Rp200/lembar`, buku umroh `Rp12.000`, Print Digital A3+ `Rp1.750`, kartu nama `Rp35.000`. Layanan lain: "mulai dari / konfirmasi WA".
- Dilarang memasang testimoni, rating, atau klaim tanpa izin dan bukti.
- `http://` dan `www` saat ini menyajikan konten identik dengan canonical ke `https://dicetaksaja.id/` (aman, tapi redirect 301 lebih ideal jika bisa diatur di DNS/hosting).
