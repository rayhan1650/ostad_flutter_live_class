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
      title: "Hello flutter",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  List<String> studentName = [
    "Salam",
    "Jhon",
    "Kalam",
    "Asif",
    "Hasan",
  ];
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView(
      //   children: [
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter Bangladesh"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //     Text("Hello Flutter"),
      //   ],
      // ),
      // body: ListView.builder(
      //     itemCount: studentName.length,
      //     itemBuilder: (context, index) {
      //       return Text(studentName[index]);
      //     }),
      body: ListView.separated(
        itemCount: studentName.length,
        itemBuilder: (context, index) {
          return Text(studentName[index]);
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 20,
            thickness: 2,
            indent: 8,
            endIndent: 16,
            color: Colors.red,
          );
        },
      ),
    );
  }
}
