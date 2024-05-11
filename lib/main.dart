import 'package:flutter/cupertino.dart';
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
      appBar: AppBar(
        title: const Text(
          'Home Screen',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        leading: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Money has been transferred'),
                backgroundColor: Colors.green,
                duration: Duration(seconds: 1),
              ));
            },
            icon: const Icon(
              Icons.more_vert_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return const AlertDialog(
                        title: Text('Send money'),
                        content: Text('Are you sure?'),
                        actions: [],
                      );
                    });
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                  side: const BorderSide(
                    width: 2,
                    color: Colors.red,
                  ),
                ),
                textStyle: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 15,
                ),
              ),
              onPressed: () {
                print('pressed');
              },
              child: const Text('Press here'),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
              ),
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_circle,
                color: Colors.red,
              ),
            ),
            GestureDetector(
              onTap: () {
                print('on tap detected');
              },
              onDoubleTap: () {
                print('on doubletap detected');
              },
              child: const Column(
                children: [
                  Text('abcd'),
                  Icon(Icons.add_circle),
                  Row(
                    children: [Text('This is a row')],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
