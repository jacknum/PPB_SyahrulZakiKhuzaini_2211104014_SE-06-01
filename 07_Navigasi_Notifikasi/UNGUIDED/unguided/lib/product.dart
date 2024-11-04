class Product {
  final int id;
  final String nama;
  final double harga;
  final String imageUrl;
  final String deskripsi;

  Product({
    required this.id,
    required this.nama,
    required this.harga,
    required this.imageUrl,
    required this.deskripsi,
  });

  // Factory method to create a Product instance from a JSON map
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      nama: json['nama'],
      harga: json['harga'].toDouble(),
      imageUrl: json['imageUrl'],
      deskripsi: json['deskripsi'],
    );
  }

  // Method to convert a Product instance to a JSON map
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nama': nama,
      'harga': harga,
      'imageUrl': imageUrl,
      'deskripsi': deskripsi,
    };
  }
}
