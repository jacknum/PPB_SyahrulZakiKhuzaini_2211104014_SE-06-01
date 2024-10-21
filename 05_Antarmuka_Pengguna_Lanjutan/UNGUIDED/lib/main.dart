import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rekomendasi Wisata Banyumas',
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  "Rekomendasi Wisata Banyumas",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                background: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://source.unsplash.com/featured/?nature,landscape',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              backgroundColor: Colors.purple,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  // Tempat Wisata 1
                  wisataCard(
                    context,
                    'Baturraden',
                    'https://infopurwokerto.com/wp-content/uploads/2021/04/baturraden-910x611.jpg',
                    'Baturaden adalah surga bagi pencinta alam di Jawa Tengah. Dengan udara sejuk, pemandangan hijau yang menyegarkan, dan beragam air terjun yang memukau, Baturaden menawarkan pengalaman liburan yang tak terlupakan.',
                  ),
                  SizedBox(height: 16),

                  // Tempat Wisata 2
                  wisataCard(
                    context,
                    'Curug Cipendok',
                    'https://gateofjava.wordpress.com/wp-content/uploads/2013/09/a12.jpg',
                    'Curug Cipendok adalah salah satu air terjun tertinggi di Jawa Tengah. Dengan ketinggian sekitar 92 meter, air terjun ini menawarkan pemandangan yang spektakuler dan udara yang sejuk.',
                  ),
                  SizedBox(height: 16),

                  // Tempat Wisata 3
                  wisataCard(
                    context,
                    'Museum Banyumas',
                    'https://assets.kompasiana.com/items/album/2021/05/29/download-7-60b24cc98ede4810c56044f2.jpg',
                    'Museum Banyumas adalah salah satu museum yang terletak di Banyumas. Museum ini menawarkan koleksi sejarah dan budaya Banyumas yang kaya dan beragam.',
                  ),
                  SizedBox(height: 16),

                  // Tempat Wisata 4
                  wisataCard(
                    context,
                    'Pantai Widara Payung',
                    'https://images.solopos.com/2023/08/Pantai-Indah-Widarapayung-Cilacap.jpg',
                    'Pantai Widara Payung adalah salah satu pantai yang terletak di Banyumas. Pantai ini menawarkan pemandangan yang indah dan udara yang sejuk.',
                  ),
                  SizedBox(height: 16),

                  // Tempat Wisata 5
                  wisataCard(
                    context,
                    'Taman Budaya Banyumas',
                    'https://assets.kompasiana.com/items/album/2023/06/07/whatsapp-image-2023-06-07-at-13-37-10-6480260f82219975475b7df2.jpeg',
                    'Taman Budaya Banyumas adalah salah satu taman yang terletak di Banyumas. Taman ini menawarkan koleksi budaya dan seni yang kaya dan beragam.',
                  ),
                  SizedBox(height: 16),

                  // Tempat Wisata 6
                  wisataCard(
                    context,
                    'Kebun Raya Banyumas',
                    'https://kebunrayabaturraden.id/wp-content/uploads/2019/04/maxresdefault-1-1000x500.jpg',
                    'Kebun Raya Banyumas adalah salah satu kebun raya yang terletak di Banyumas. Kebun ini menawarkan koleksi tanaman yang kaya dan beragam.',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget wisataCard(
      BuildContext context, String title, String imageUrl, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 16.0), // Add horizontal padding
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.network(
                imageUrl,
                width: double.infinity,
                height: 180,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Nama tempat di tengah
                  Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16, color: Colors.grey[800]),
                  ),
                  SizedBox(height: 16),

                  // Tombol di tengah dengan warna teks putih
                  Center(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        "Kunjungi Tempat",
                        style:
                            TextStyle(color: Colors.white), // Warna teks putih
                      ),
                      onPressed: () {
                        // Action when pressed
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
