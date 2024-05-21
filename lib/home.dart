import 'package:flutter/material.dart';
import 'package:ostad_flutter_live_class/profile.dart';
import 'package:ostad_flutter_live_class/settings.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leading: const Icon(
          Icons.home,
          color: Colors.white,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Settings();
                  }));
                },
                child: const Text("Go to Settings")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  );
                },
                child: const Text("Go to Profile")),
          ],
        ),
      ),
    );
  }
}
