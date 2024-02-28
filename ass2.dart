import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Ass',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(255, 68, 34, 22)),
          ),
          actions: [Icon(Icons.favorite)],
          leading: Icon(Icons.menu),
          backgroundColor: Colors.blueAccent,
          centerTitle: true,
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.cyan,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: const Color.fromARGB(255, 24, 228, 255),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
