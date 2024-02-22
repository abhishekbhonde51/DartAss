import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image List',
      home: ImageApp(),
    );
  }
}

class ImageApp extends StatefulWidget {
  const ImageApp({super.key});

  State<ImageApp> createState() => _ImageAppState();
}

class _ImageAppState extends State<ImageApp> {
  @override
  int counter = 0;
  void imageChanger() {
    setState(() {
      counter++;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('ImageApp'),
          centerTitle: true,
          backgroundColor: Colors.amber),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (counter == 1)
                ? Container(
                    height: 300,
                    width: 300,
                    child: const Image(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/5178616/pexels-photo-5178616.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                  )
                : Container(),
            (counter == 2)
                ? Container(
                    height: 300,
                    width: 300,
                    child: Image(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/18523414/pexels-photo-18523414/free-photo-of-ganesh-chaturthi.jpeg?auto=compress&cs=tinysrgb&w=600')))
                : Container(),
            (counter == 3)
                ? Container(
                    height: 300,
                    width: 300,
                    child: Image(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/10653266/pexels-photo-10653266.jpeg?auto=compress&cs=tinysrgb&w=600')))
                : Container(),
            (counter == 4)
                ? Container(
                    height: 300,
                    width: 300,
                    child: Image(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/13078612/pexels-photo-13078612.jpeg?auto=compress&cs=tinysrgb&w=600')))
                : Container(),
            (counter == 5)
                ? Container(
                    height: 300,
                    width: 300,
                    child: Image(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/13542097/pexels-photo-13542097.jpeg?auto=compress&cs=tinysrgb&w=600')))
                : Container(),
            (counter == 6)
                ? Container(
                    height: 300,
                    width: 300,
                    child: Image(
                        image: NetworkImage(
                            'https://images.pexels.com/photos/13737998/pexels-photo-13737998.jpeg?auto=compress&cs=tinysrgb&w=600')))
                : Container(),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter++;
                  });
                },
                child: Text('click here'))
          ],
        ),
      ),
    );
  }
}


