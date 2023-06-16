# **EVENT**

## :blue_book: **Deskripsi**
<p align="justify">
Eventbrite adalah platform teknologi acara terbesar di dunia, yang memotori jutaan acara di lebih dari 180 negara dan wilayah. Halaman ini menyajikan informasi terkait Event - event nasional berdasarkan nama event, tempat dan waktu pelaksanaan. 
</p>

<p align="justify">
Project ini merupakan scraping data pada website https://www.eventbrite.com/d/indonesia/events/, dimana yang discraping adalah informasi terkait event - event nasional yang akan dilaksanakan di dalam negeri, sehingga memudahkan seseorang dalam mencari informasi terkait kegiatan atau event yang akan dilaksanakan.
</p>

[![scrape_event](https://raw.githubusercontent.com/kristatIPB/dokumen_project/main/QQ.jpg)](https://raw.githubusercontent.com/kristatIPB/dokumen_project/main/QQ.jpg)

<p align="center" width="100%">
    <img width="70%" src="https://raw.githubusercontent.com/kristatIPB/dokumen_project/main/WW.jpg">
</p>

## :clipboard: **Dokumen**

Berikut contoh dokumen pada Mongo DB :

```
{"_id":{"$oid":"6483031fa20241bdd500cd81"},
"nama_event":"Study in UK Expo & Pre-Departure Briefing",
"hari":"Tomorrow ","jam":"11:00","meridiem":"AM",
"tempat":"AYANA Midplaza JAKARTA",
"waktu_scrap":"2023-06-09"}
```
### Hasil Scraping Tabel pada R
Terdapat 40 baris dan 5 kolom.
- Kolom 1 : Nama Event
- Kolom 2 : Hari
- Kolom 3 : Jam
- Kolom 4 : a.m/p.m
- Kolom 5 : Tempat

## :computer: **Visualisasi**

Berikut link visualisasi dari data yang telah discraping :
https://rpubs.com/kris009kapiluka/1055389

## :walking: **Pengembang**
**Kristuisno M. Kapiluka - G1501221034** https://github.com/kristatIPB
