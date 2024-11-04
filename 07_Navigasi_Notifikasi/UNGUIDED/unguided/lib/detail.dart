// detail.dart
import 'package:flutter/material.dart';
import 'package:unguided/product.dart';

class DetailPage extends StatelessWidget {
  final Product product;

  DetailPage({required this.product});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Product'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(product.imageUrl),
            SizedBox(height: 20),
            Text(
              product.nama,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Harga: Rp. ${product.harga}'),
            SizedBox(height: 10),
            Text(product.deskripsi),
          ],
        ),
      ),
    );
  }
}
