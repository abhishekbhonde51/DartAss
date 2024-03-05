import 'dart:html';

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewApp(),
    );
  }
}

class NewApp extends StatefulWidget {
  const NewApp({super.key});

  @override
  _NewApp createState() => _NewApp();
}

class _NewApp extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Ass"),
        centerTitle: true,
      ),
      body: Column(children: [
        Container(
          height: 200,
          width: 200,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.yellow, width: 5),
              borderRadius: const BorderRadius.all(Radius.circular(34)),
              boxShadow: const [
                // BoxShadow(
                //     color: Colors.blue, offset: Offset(10, 40), blurRadius: 23),
                // BoxShadow(
                //     color: Colors.black, offset: Offset(20, 2), blurRadius: 10),
                // BoxShadow(
                //     color: Colors.teal, offset: Offset(20, 30), blurRadius: 10),
              ],
              // gradient: const LinearGradient(
              //     stops: [0.3, 0.5], colors: [Colors.blue, Colors.red]),
              gradient: const SweepGradient(
                  stops: [0.7, 0.8], colors: [Colors.blue, Colors.red])),
        ),
      ]),
    );
  }
}

