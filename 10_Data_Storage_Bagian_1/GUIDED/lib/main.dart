import 'package:flutter/material.dart';
import 'package:praktikum_10/view/my_db_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MyDatabaseView(),
    );
  }
}