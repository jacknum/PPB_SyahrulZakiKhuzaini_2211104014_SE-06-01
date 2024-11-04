import 'package:flutter/material.dart';
import 'package:praktikum_7/pages/detail.dart';
import '../models/product.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final List<Product> products = [
    Product(
        id: 1,
        nama: 'Mouse',
        harga: 2399000.00,
        imageUrl:
            'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g502x-plus/gallery/g502x-plus-gallery-1-black.png?v=1',
        deskripsi: 'Logitech G5032 X Plus'),
    Product(
      id: 2,
      nama: 'Keyboard Mechanical',
      harga: 3299000.00,
      imageUrl:
          'https://resource.logitechg.com/w_692,c_lpad,ar_4:3,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/gaming/en/products/pro-x-tkl/gallery-1-pro-x-tkl-black-lightspeed-gaming-keyboard.png.png?v=1',
      deskripsi: 'Logitech G Pro X TKL',
    ),
    Product(
      id: 3,
      nama: 'Headphone Gaming',
      harga: 1749000.00,
      imageUrl:
          'https://resource.logitechg.com/w_692,c_lpad,ar_4:3,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/gaming/en/products/g733/gallery/g733-white-gallery-1.png?v=1',
      deskripsi: 'Logitech G733',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Class Model'),
          centerTitle: true,
          backgroundColor: Colors.blue[300],
        ),
        body: ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ListTile(
                leading: Image.network(
                  product.imageUrl,
                  width: 70,
                  height: 70,
                ),
                title: Text(product.nama),
                subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Harga: Rp. ${product.harga}'),
                      Text(product.deskripsi),
                    ]),
                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(
                      builder: (_) => const DetailProduct(
                        data: "Detail Product",
                    ))
                  );
                },
              );
          }
      )
    );
  }
}
