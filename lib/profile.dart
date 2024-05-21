import 'package:flutter/material.dart';
import 'package:ostad_flutter_live_class/settings.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.userName});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userName),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, "Hello Home");
                },
                child: const Text("Back to Home")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => Settings()));
                },
                child: const Text("Go to Settings")),
          ],
        ),
      ),
    );
  }
}
