import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pertemuan 4',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LatihanList(title: 'Latihan List View'),
    );
  }
}

class LatihanList extends StatefulWidget {
  const LatihanList({super.key, required this.title});

  final String title;

  @override
  State<LatihanList> createState() => _LatihanListState();
}

class _LatihanListState extends State<LatihanList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.red,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://i.scdn.co/image/ab67616d0000b2732a061f8cc383443cbb46adf6', 
                width: 250, 
                height: 250,),
              SizedBox(
                height: 40,
              ),
              const Text('Persona 5')
            ],
          ),
        ),
      ),
      Container(
       padding: const EdgeInsets.all(8),
            color: Colors.amber,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://i.scdn.co/image/ab67616d0000b273813c6f8e6aef9f3b5a4a198e',
                    width: 250,
                    height: 250,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  const Text('Persona 4')
                ],
              ),
            ),
      ),
      Container(
       padding: const EdgeInsets.all(8),
            color: Colors.blue,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://i.scdn.co/image/ab67616d0000b273e59bdb7ca29ddfcb23ec4bf6',
                    width: 250,
                    height: 250,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  const Text('Persona 3')
                ],
              ),
            ),
      ),
      Container(
        padding: const EdgeInsets.all(8),
            color: Colors.green,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://i.scdn.co/image/ab67616d0000b2734391835c16ff6c18bb9854c6',
                    width: 250,
                    height: 250,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  const Text('The Velvet Chiptunes')
                ],
              ),
            ),
      ),
      ],),
    );
  }
}
