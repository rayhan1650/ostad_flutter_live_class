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
              icon: const Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
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
              ),
              InkWell(
                splashColor: Colors.orange,
                radius: 20,
                borderRadius: BorderRadius.circular(30),
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
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.green,
                  ),
                  maxLength: 10,
                  decoration: InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                    labelText: "Email",
                    labelStyle: const TextStyle(),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        width: 4,
                        color: Colors.red,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        width: 4,
                        color: Colors.red,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        width: 4,
                        color: Colors.green,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: const BorderSide(
                        width: 4,
                        color: Colors.grey,
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(Icons.add),
                    prefixIconColor: Colors.red,
                    suffixIcon: const Icon(Icons.remove_red_eye),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    image: const DecorationImage(
                      image: AssetImage('images/bird.jpg'),
                      fit: BoxFit.cover,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3),
                      ),
                    ]),
                alignment: Alignment.center,
                child: const Text("Container"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
