import 'package:flutter/cupertino.dart';

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
}
