// mypage.dart
import 'package:flutter/material.dart';
import 'package:unguided/product.dart';
import 'package:unguided/detail.dart';

class MyPage extends StatelessWidget {
  MyPage({super.key});

  final List<Product> products = <Product>[
    Product(
      id: 1,
      nama: 'Mouse',
      harga: 2399000,
      imageUrl:
          'https://resource.logitechg.com/w_386,ar_1.0,c_limit,f_auto,q_auto,dpr_2.0/d_transparent.gif/content/dam/gaming/en/products/g502x-plus/gallery/g502x-plus-gallery-1-black.png?v=1',
      deskripsi: 'Logitech G5032 X Plus',
    ),
    Product(
      id: 2,
      nama: 'Keyboard Mechanical',
      harga: 3299000,
      imageUrl:
          'https://resource.logitechg.com/w_692,c_lpad,ar_4:3,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/gaming/en/products/pro-x-tkl/gallery-1-pro-x-tkl-black-lightspeed-gaming-keyboard.png.png?v=1',
      deskripsi: 'Logitech G Pro X TKL',
    ),
    Product(
      id: 3,
      nama: 'Headphone Gaming',
      harga: 1749000,
      imageUrl:
          'https://resource.logitechg.com/w_692,c_lpad,ar_4:3,q_auto,f_auto,dpr_1.0/d_transparent.gif/content/dam/gaming/en/products/g733/gallery/g733-white-gallery-1.png?v=1',
      deskripsi: 'Logitech G733',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-commerce'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 8.0, // Spacing between columns
            mainAxisSpacing: 8.0, // Spacing between rows
            childAspectRatio: 3 / 4, // Aspect ratio of each item
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return MouseRegion(
              cursor: SystemMouseCursors.click, // Change cursor to pointer
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailPage(product: product),
                    ),
                  );
                },
                child: Card(
                  elevation: 4, // Shadow depth
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12), // Rounded corners
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(12)),
                          child: Image.network(
                            product.imageUrl,
                            fit: BoxFit
                                .cover, // Ensures the image covers the space
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              product.nama,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Harga: Rp. ${product.harga}',
                              style: TextStyle(fontSize: 14),
                            ),
                            SizedBox(height: 4),
                            Text(
                              product.deskripsi,
                              style:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
