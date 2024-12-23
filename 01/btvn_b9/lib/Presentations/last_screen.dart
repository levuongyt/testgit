import 'package:flutter/material.dart';

import '../main.dart';

class LastScreen extends StatelessWidget {
  const LastScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('LAST SCREEN')),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FirstScreen()),
          );
        },
        child: Container(
          width: 70,
          height: 60,
          color: Colors.black87,
          child: const Icon(
            Icons.navigate_next_rounded,
            color: Colors.white,
            size: 40,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.greenAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => const FirstScreen(),
                  ),
                  (route) =>
                      false, //if you want to disable back feature set to false
                );
              },
              child: Container(
                width: 70,
                height: 60,
                color: Colors.blueAccent,
                child: const Icon(
                  Icons.reset_tv_outlined,
                  color: Colors.white,
                  size: 40,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
