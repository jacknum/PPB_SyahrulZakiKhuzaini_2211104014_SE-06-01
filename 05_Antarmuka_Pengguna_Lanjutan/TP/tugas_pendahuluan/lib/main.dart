import 'package:flutter/material.dart';

void main() {
  runApp(WisataApp());
}

class WisataApp extends StatelessWidget {
  const WisataApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const WisataHomePage(title: 'Rekomendasi Wisata'),
    );
  }
}

class WisataHomePage extends StatefulWidget {
  const WisataHomePage({super.key, required this.title});

  final String title;

  @override
  State<WisataHomePage> createState() => _WisataHomePageState();
}

class _WisataHomePageState extends State<WisataHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(209, 134, 0, 211),
        title: Align(
          alignment: Alignment.center,
          child: Text(
            widget.title,
            style: const TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          // Menambahkan scroll agar konten tidak terpotong
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Nama Tempat Wisata',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20), // Menambahkan jarak antara teks dan gambar
              Image.network(
                'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/05/67/4c/1f/lokawisata.jpg?w=1000&h=-1&s=1',
                height: 200, // Tinggi gambar
                width: 300, // Lebar gambar
                fit: BoxFit.cover, // Memastikan gambar terisi dengan baik
              ),
              SizedBox(
                  height: 20), // Menambahkan jarak antara gambar dan deskripsi
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Baturraden adalah sebuah tempat wisata yang terletak di Kabupaten Banyumas, Jawa Tengah, Indonesia.'
                  'Terkenal dengan pemandangan alam yang indah dan udara yang sejuk,' 
                  ' Baturraden menjadi salah satu tujuan wisata favorit bagi pengunjung yang ingin bersantai dan menikmati keindahan alam.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              SizedBox(height: 20), // Menambahkan jarak sebelum tombol
              ElevatedButton(
                onPressed: () {
                  // Tindakan ketika tombol ditekan
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Kunjungi tempat wisata ini!')),
                  );
                },
                child: Text('Kunjungi Tempat'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
