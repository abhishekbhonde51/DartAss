import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToggleApp(),
    );
  }
}

class ToggleApp extends StatefulWidget {
  const ToggleApp({super.key});

  State<ToggleApp> createState() => _ToggleAppState();
}

class _ToggleAppState extends State<ToggleApp> {
  int counter = 0;
  Color? box1Color() {
    if (counter == 0) {
      return Colors.blue;
    } else if (counter == 1) {
      print('clicked on green');
      return Colors.green;
    } else {
      counter = 0;
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Container APp'),
          centerTitle: true,
          backgroundColor: Colors.amber,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: box1Color(),
                ),
               const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () => {
                    setState(() {
                      counter++;
                    })
                  },
                  child: const Text('button1'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

