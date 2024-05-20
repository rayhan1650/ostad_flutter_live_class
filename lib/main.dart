import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Hello flutter",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter Bangladesh"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
          Text("Hello Flutter"),
        ],
      ),
    );
  }
}
