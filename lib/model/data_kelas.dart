class DataKelas {
  String namaKelas;
  String levelKelas;
  String jamBelajar;
  String siswaTerdaftar;
  String deskripsiKelas;
  String gambarKelas;
  String linkKelas;

  DataKelas({
    required this.namaKelas,
    required this.levelKelas,
    required this.jamBelajar,
    required this.siswaTerdaftar,
    required this.deskripsiKelas,
    required this.gambarKelas,
    required this.linkKelas,
  });
}

var dataKelasList = [
  DataKelas(
    namaKelas: "Memulai Pemrograman dengan Dart",
    levelKelas: "Level Dasar",
    jamBelajar: "30 Jam Belajar",
    siswaTerdaftar: "32.804 Siswa Terdaftar",
    deskripsiKelas:
        "Belajar bahasa Dart sebagai fondasi dasar untuk mengembangkan aplikasi di berbagai platform menggunakan Flutter.",
    gambarKelas: "assets/images/memulai_pemrograman_dengan_dart_logo.jpg",
    linkKelas: "https://www.dicoding.com/academies/191/corridor",
  ),
  DataKelas(
    namaKelas: "Belajar Membuat Aplikasi Flutter untuk Pemula",
    levelKelas: "Level Pemula",
    jamBelajar: "40 Jam Belajar",
    siswaTerdaftar: "30.947 Siswa Terdaftar",
    deskripsiKelas:
        "Buat aplikasi pertamamu dengan Flutter. Pelajari konsep dasar layouting dengan widget dan menjalankan aplikasi di platform mobile & web.",
    gambarKelas:
        "assets/images/belajar_membuat_aplikasi_flutter_untuk_pemula_logo.jpg",
    linkKelas: "https://www.dicoding.com/academies/159/corridor",
  ),
  DataKelas(
    namaKelas: "Belajar Fundamental Aplikasi Flutter",
    levelKelas: "Level Menengah",
    jamBelajar: "90 Jam Belajar",
    siswaTerdaftar: "5793 Siswa Terdaftar",
    deskripsiKelas:
        "Pelajari komponen fundamental Flutter berdasarkan teknik yang digunakan industri mulai dari state management, API, database, sampai testing.",
    gambarKelas: "assets/images/belajar_fundamental_aplikasi_flutter_logo.jpg",
    linkKelas: "https://www.dicoding.com/academies/195/corridor",
  ),
  DataKelas(
    namaKelas: "Belajar Pengembangan Aplikasi Flutter Intermediate",
    levelKelas: "Level Mahir",
    jamBelajar: "80 Jam Belajar",
    siswaTerdaftar: "1.835 Siswa Terdaftar",
    deskripsiKelas:
        "Tingkatkan pengalaman pengguna dengan mempelajari Advanced Navigation, Media, Localization, Flutter Desktop, Animation, dan Location.",
    gambarKelas:
        "assets/images/dos_belajar_pengembangan_aplikasi_flutter_intermediate_logo.png",
    linkKelas: "https://www.dicoding.com/academies/480/corridor",
  ),
  DataKelas(
    namaKelas: "Belajar Prinsip Pemrograman SOLID",
    levelKelas: "Level Menengah",
    jamBelajar: "15 Jam Belajar",
    siswaTerdaftar: "45.099 Siswa Terdaftar",
    deskripsiKelas:
        "Pelajari kelima prinsip desain yang merupakan pedoman untuk rancangan kode yang baik pada pemrograman berorientasi objek (OOP).",
    gambarKelas: "assets/images/belajar_prinsip_pemrograman_solid_logo.jpg",
    linkKelas: "https://www.dicoding.com/academies/169/corridor",
  ),
  DataKelas(
    namaKelas: "Menjadi Flutter Developer Expert",
    levelKelas: "Level Profesional",
    jamBelajar: "85 Jam Belajar",
    siswaTerdaftar: "2.860 Siswa Terdaftar",
    deskripsiKelas:
        "Pelajari bagaimana membuat aplikasi yang scalable dengan Clean Architecture, TDD, CI, Modularization, dan Reactive Programming.",
    gambarKelas: "assets/images/menjadi_flutter_developer_expert_logo.jpg",
    linkKelas: "https://www.dicoding.com/academies/199/corridor",
  ),
  DataKelas(
    namaKelas: "Memulai Pemrograman dengan Kotlin",
    levelKelas: "Level Dasar",
    jamBelajar: "50 Jam Belajar",
    siswaTerdaftar: "73.184 Siswa Terdaftar",
    deskripsiKelas:
        "Pelajari dasar bahasa pemrograman, functional programming, object-oriented programming (OOP), serta concurrency dengan menggunakan Kotlin.",
    gambarKelas: "assets/images/memulai_pemrograman_dengan_kotlin_logo.jpg",
    linkKelas: "https://www.dicoding.com/academies/80/corridor",
  ),
  DataKelas(
    namaKelas: "Belajar Membuat Aplikasi Android untuk Pemula",
    levelKelas: "Level Pemula",
    jamBelajar: "60 Jam Belajar",
    siswaTerdaftar: "128.354 Siswa Terdaftar",
    deskripsiKelas:
        "Buat aplikasi pertamamu pada Android Studio dengan mempelajari dasar Activity, Intent, View & ViewGroup, Style & Theme sampai RecyclerView.",
    gambarKelas:
        "assets/images/belajar_membuat_aplikasi_android_untuk_pemula_logo.jpg",
    linkKelas: "https://www.dicoding.com/academies/51/corridor",
  ),
  DataKelas(
    namaKelas: "Belajar Fundamental Aplikasi Android",
    levelKelas: "Level Menengah",
    jamBelajar: "140 Jam Belajar",
    siswaTerdaftar: "44.039 Siswa Terdaftar",
    deskripsiKelas:
        "Pelajari skill Android dengan kurikulum terlengkap yang dibutuhkan perusahaan. Mulai dari UI/UX, background process, API sampai database..",
    gambarKelas: "assets/images/belajar_fundamental_aplikasi_android_logo.jpg",
    linkKelas: "https://www.dicoding.com/academies/14/corridor",
  ),
  DataKelas(
    namaKelas: "Belajar Pengembangan Aplikasi Android Intermediate",
    levelKelas: "Level Mahir",
    jamBelajar: "150 Jam Belajar",
    siswaTerdaftar: "8.710 Siswa Terdaftar",
    deskripsiKelas:
        "Tingkatkan pengalaman pengguna dengan mempelajari Custom View, Animation, Localization, Media, Location, Testing, dan Advanced Database.",
    gambarKelas:
        "assets/images/dos_belajar_pengembangan_aplikasi_android_intermediate_logo.png",
    linkKelas: "https://www.dicoding.com/academies/352/corridor",
  ),
  DataKelas(
    namaKelas: "Menjadi Android Developer Expert",
    levelKelas: "Level Profesional",
    jamBelajar: "90 Jam Belajar",
    siswaTerdaftar: "7.100 Siswa Terdaftar",
    deskripsiKelas:
        "Saatnya menjadi Android Expert dengan belajar Clean Architecture, Reactive, Dependency Injection, Modularization, Performance, dan Security.",
    gambarKelas: "assets/images/menjadi_android_developer_expert_logo.jpg",
    linkKelas: "https://www.dicoding.com/academies/165/corridor",
  )
];
