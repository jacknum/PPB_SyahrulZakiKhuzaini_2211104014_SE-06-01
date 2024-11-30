import 'package:flutter/material.dart';
import 'my_db_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SQLite Biodata Mahasiswa',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: HomePage(),
    );
  }
}