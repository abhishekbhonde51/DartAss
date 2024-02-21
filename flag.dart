import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
  int counter = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter++;
            });
          },
        ),
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        body: Container(
          color: Colors.grey[300],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (counter >= 0)
                  ? Container(
                      height: 500,
                      width: 20,
                      color: Colors.black,
                    )
                  : Container(),
              Column(
                children: [
                  (counter >= 1)
                      ? Container(
                          height: 50,
                          width: 200,
                          color: Colors.orange,
                        )
                      : Container(),
                  (counter >= 2)
                      ? Container(
                          child: (counter >= 3)
                              ? Image(
                                  image: NetworkImage(
                                      'https://imgs.search.brave.com/nzcFu7liobKpod3KfJc6dS8PMFot7mW-D3VnyUO-nUU/rs:fit:500:0:0/g:ce/aHR0cHM6Ly91cGxv/YWQud2lraW1lZGlh/Lm9yZy93aWtpcGVk/aWEvY29tbW9ucy90/aHVtYi8xLzE3L0Fz/aG9rYV9DaGFrcmEu/c3ZnLzY0MHB4LUFz/aG9rYV9DaGFrcmEu/c3ZnLnBuZw'))
                              : Container(),
                          height: 50,
                          width: 200,
                          color: Colors.white,
                        )
                      : Container(),
                  (counter >= 4)
                      ? Container(
                          height: 50,
                          width: 200,
                          color: Colors.green,
                        )
                      : Container()
                ],
              )
            ],
          ),
        ));
  }
}

