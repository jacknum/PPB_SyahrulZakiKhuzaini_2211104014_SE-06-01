import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: GridView.count (
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Persona 5'),
                  Image.network(
                    'https://i.pinimg.com/originals/7e/32/b8/7e32b8b84920e26b9bfe70799e790248.jpg',
                  width: 175,
                  height: 175,
                  ),
                ],
              ),
            ),
            color: Colors.red,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Persona 4'),
                  Image.network(
                    'https://i.pinimg.com/originals/18/e9/d2/18e9d281de23c0a59f01448078bef025.png',
                    width: 175,
                    height: 175,
                  ),
                ],
              ),
            ),
            color: Colors.yellow,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Persona 3'),
                  Image.network(
                    'https://i.pinimg.com/originals/0d/84/44/0d84443f6d421cc7aba8b7b8c3f0ba5d.jpg',
                    width: 175,
                    height: 175,
                  ),
                ],
              ),
            ),
            color: Colors.blue,
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Persona MC'),
                  Image.network(
                    'https://i.pinimg.com/originals/10/ae/d6/10aed63d3eaa0d6860a3adbf89e4f494.jpg',
                    width: 175,
                    height: 175,
                  ),
                ],
              ),
            ),
            color: const Color.fromARGB(255, 133, 133, 133),
          ),
        ],
      ),
    );
  }
}
