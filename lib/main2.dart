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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  //center  widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //Row, Column.
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 50,
              height: 50,
              color: Colors.purple,
            ),
          ),

          //yayılmak için Expanded kullanılır.

          Expanded(
            //flex:30,
            child: Container(
              width: 80,
              height: 80,
              color: Colors.amber,
            ),
          ),
          //Containerler arasına boşluk bırakmak.
          SizedBox(
            width: 20,
            height: 200,
          ),
          SizedBox(
            width: 80,
            height: 80,
            child: Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
          ),
          //Containerler arasına boşluk bırakmak.
          Spacer(
            flex: 100,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10.0,
              right: 8.0,
              top: 5.0,
              bottom: 5.0,
            ),
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          )
        ],
      ),
    );
  }
}
