/*import 'package:flutter/cupertino.dart';

void main() {
  runApp(const IOSStyleApp());
}

class IOSStyleApp extends StatelessWidget {
  const IOSStyleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: const Text("Home"),
          trailing: CupertinoButton(
            onPressed: () {},
            child: const Icon(CupertinoIcons.add),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CupertinoActivityIndicator(
                radius: 24,
              ),
              CupertinoSwitch(value: false, onChanged: (value) {})
            ],
          ),
        ));
  }
}*/
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.pink,
            foregroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          errorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
        ),
        appBarTheme: SetTheme.appBarTheme,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Tap to edit")),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Tap to edit")),
            TextButton(
              onPressed: () {},
              child: Text("Tap to edit"),
              style: TextButton.styleFrom(
                foregroundColor: Color(0xFFB80E0E),
              ),
            ),
            TextField()
          ],
        ),
      ),
    );
  }
}

class SetTheme {
  static AppBarTheme appBarTheme = const AppBarTheme(
    backgroundColor: Colors.green,
    elevation: 3,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  );
}
