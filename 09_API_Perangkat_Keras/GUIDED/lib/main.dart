import 'package:flutter/material.dart';
import 'package:praktikum_9/myapi_page.dart';
import 'package:praktikum_9/image_picker_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: ImageFromGalleryEx(ImageSourceType.gallery),
    );
  }
}
