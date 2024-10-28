import 'package:flutter/material.dart';
import 'package:praktikum_6/dropdown.dart';
import 'package:praktikum_6/my_bottomnav.dart';
import 'package:praktikum_6/my_package.dart';
import 'package:praktikum_6/my_tabbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: const LatihanDropdown(),
    ));
  }
}
