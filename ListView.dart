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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List listImage = [
    'https://imgs.search.brave.com/LOuLOaZDcL4Z3Od0ib8hYm2_kA27Dn2jU8yeQhHZghc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvZmVhdHVy/ZWQvdmlyYXQta29o/bGktcGljdHVyZXMt/eWM4ZGZwY2pzc3Az/czRzZS5qcGc',
    'https://imgs.search.brave.com/LOuLOaZDcL4Z3Od0ib8hYm2_kA27Dn2jU8yeQhHZghc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvZmVhdHVy/ZWQvdmlyYXQta29o/bGktcGljdHVyZXMt/eWM4ZGZwY2pzc3Az/czRzZS5qcGc',
    'https://imgs.search.brave.com/LOuLOaZDcL4Z3Od0ib8hYm2_kA27Dn2jU8yeQhHZghc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvZmVhdHVy/ZWQvdmlyYXQta29o/bGktcGljdHVyZXMt/eWM4ZGZwY2pzc3Az/czRzZS5qcGc',
    'https://imgs.search.brave.com/LOuLOaZDcL4Z3Od0ib8hYm2_kA27Dn2jU8yeQhHZghc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvZmVhdHVy/ZWQvdmlyYXQta29o/bGktcGljdHVyZXMt/eWM4ZGZwY2pzc3Az/czRzZS5qcGc',
    'https://imgs.search.brave.com/LOuLOaZDcL4Z3Od0ib8hYm2_kA27Dn2jU8yeQhHZghc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvZmVhdHVy/ZWQvdmlyYXQta29o/bGktcGljdHVyZXMt/eWM4ZGZwY2pzc3Az/czRzZS5qcGc',
    'https://imgs.search.brave.com/LOuLOaZDcL4Z3Od0ib8hYm2_kA27Dn2jU8yeQhHZghc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvZmVhdHVy/ZWQvdmlyYXQta29o/bGktcGljdHVyZXMt/eWM4ZGZwY2pzc3Az/czRzZS5qcGc',
    'https://imgs.search.brave.com/LOuLOaZDcL4Z3Od0ib8hYm2_kA27Dn2jU8yeQhHZghc/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvZmVhdHVy/ZWQvdmlyYXQta29o/bGktcGljdHVyZXMt/eWM4ZGZwY2pzc3Az/czRzZS5qcGc',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('demo app'),
      ),
      body: ListView.separated(
        itemCount: listImage.length,
        separatorBuilder: (BuildContext context, int index) {
          return Center(
            child: Text(
                "---------------------------------------------------------------------------"),
          );
        },
        itemBuilder: (BuildContext contex, int index) {
          return Container(
            height: 200,
            width: 200,
            child: Image.network(listImage[index]),
          );
        },
      ),
    );
  }
}

