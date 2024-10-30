# Cover 
<div align="center">
TUGAS PENDAHULUAN <br>
PEMROGRAMAN PERANGKAT BERGERAK <br>
<br>
MODUL VII <br>
NAVIGASI DAN NOTIFIKASI <br>

<img src="https://lac.telkomuniversity.ac.id/wp-content/uploads/2021/01/cropped-1200px-Telkom_University_Logo.svg-270x270.png" width="250px">

<br>

Disusun Oleh: <br>
Syahrul Zaki Khuzaini/2211104014 <br>
SE-06-01 <br>

<br>

Asisten Praktikum : <br>
Muhammad Faza Zulian Gesit Al Barru <br>
Aisyah Hasna Aulia <br>

<br>

Dosen Pengampu : <br>
Yudha Islami Sulistya, S.Kom., M.Cs <br>

<br>

PROGRAM STUDI S1 REKAYASSA PERANGKAT LUNAK <br>
FAKULTAS INFORMATIKA <br> 
TELKOM UNIVERSITY PURWOKERTO <br>

</div>

## Tugas Pendahuluan
---

### A. Soal <br>
a. Buatlah satu project baru, yang mana di dalamnya terdapat navigasi untuk pindah
dari satu halaman ke halaman lainnya
<br>


#### Source Code <br>
   
![image](img/code.png)
<br>

#### Screenshot Output<br>

![image](img/output1.png)
![image](img/output2.png)
<br>

#### Deskripsi Program <br>
Kode tersebut adalah sebuah proyek Flutter sederhana dengan navigasi antar halaman. Di dalam main.dart, fungsi main memulai aplikasi, dan widget MyApp mengatur tema serta rute halaman. HomePage memiliki tombol yang menggunakan Navigator.pushNamed untuk berpindah ke SecondPage, sedangkan SecondPage memiliki tombol untuk kembali ke HomePage dengan Navigator.pop. Dengan struktur ini, pengguna dapat berpindah antar halaman dengan mudah menggunakan nama rute yang sudah ditentukan.