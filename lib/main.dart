import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      //Projeye çoklu ekran desteği sağlama:
      body: LayoutBuilder(builder: (Buildcontext: context, constraints) {
        if (constraints.maxWidth > 600) {
          return Tablet_tasarim();
        } else {
          return Telefon_tasarim();
        }
      }),
    );
  }
}

/*
Projeye resim ekleme:
Image.asset("resimler/test1.png"),
            Text("Manzara"),
            Text("Klasik Araba"),
            Image.asset("resimler/artwork.png"),
 */

//StatelessWidget: Değişmeyen bir widgettır. Örneğin bir buton, bir yazı, bir resim gibi. Bu widgetlar sadece bir kez oluşturulur ve herhangi bir değişiklik olmadığı sürece tekrar oluşturulmaz. Bu widgetlar için build() metodu çağrılmaz. Bu widgetlar için state oluşturulmaz.

class Tablet_tasarim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("resimler/flower3x.png"),
        Text(
          "Çiçek görseli",
          style: TextStyle(
            fontSize: 30.0,
          ),
        ),
      ]),
    );
  }
}

class Telefon_tasarim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset("resimler/flowerx.png"),
        Text(
          "Çiçek görseli",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ]),
    );
  }
}
