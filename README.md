## tugas-tracker

### Tugas 7
#### Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Stateless tidak berubah seperti gambar, ikon, sedangkan stateful selalu berubah sesuai dengan statenya

#### Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
Drawer: Panel navigasi disamping kiri yang dapat dipencet untuk menampilkan page-page tertentu, dalam hal ini, ada page halaman utama dan tambah item.
Main_menu_card: Icon-icon/card yang terdapat dalam halaman utama

#### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
Install flutter - buat card - buat folder untuk merapihkan file kode sesuai dengan fugnsinya masing-masing

### Tugas 8 
#### Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
Nagigator.push: menambah navigasi page pada stack navigasi
navigator.pushreplacement:  mreplace navigasi page pada stack navigasi
Misal: halaman utama - lihat tugas -> tambah tugas
push: halaman utama - lihat tugas - tambah tugas
pushreplacement :halaman utama - tambah tugas

#### Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
Container: Digunakan untuk menempatkan widget ke dalam kotak dengan kontrol tambahan seperti margin, padding, dan dekorasi.
Row: Menyusun widget ke dalam baris horizontal.
Column: Menyusun widget ke dalam kolom vertikal.
Stack: Menempatkan widget di atas satu sama lain dalam tumpukan.
ListView: Menyusun widget dalam daftar yang dapat digulir secara vertikal atau horizontal.

#### Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
SingleChildScrollView: Dapat scroll ketika ukuran melibihi dari layar
TextFormField: Dapat input teks pada field tersebut

#### Bagaimana penerapan clean architecture pada aplikasi Flutter?
Domain Layer: Berisi logika aplikasi yang independen dari platform, seperti entitas, use cases, dan abstraksi repositori.
Data Layer: Bertanggung jawab untuk mengambil atau menyimpan data dari berbagai sumber seperti API, database lokal.
Presentation Layer (UI): Lapisan terluar yang berinteraksi dengan pengguna. Di Flutter, ini terdiri dari widget-widget UI. Presenter atau ViewModel bertanggung jawab untuk menghubungkan antara tampilan dan logika bisnis.

#### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)
Buat form - buat drawer - set drawer pada screens - buat folder untuk merapihkan file kode sesuai dengan fugnsinya masing-masing

### Tugas 9 
#### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?


#### Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.


#### Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilksan pada Flutter.


#### Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.


#### Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.


#### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
