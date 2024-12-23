import 'package:btvn_b9/Presentations/last_screen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.inputFromFirstScreen});
  final String inputFromFirstScreen;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('SECOND SCREEN'),
          bottom: const TabBar(
            indicatorColor: Colors.red,
            tabs: [
              Tab(
                  icon: Icon(
                Icons.ac_unit,
                size: 40,
              )),
              Tab(
                  icon: Icon(
                Icons.account_circle,
                size: 40,
              )),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              color: Colors.greenAccent,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Xin chào $inputFromFirstScreen',
                        style: Theme.of(context).textTheme.bodyMedium,
                        // style: const TextStyle(
                        //     color: Colors.red,
                        //     fontSize: 30,
                        //     fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.greenAccent,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LastScreen()),
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
            ),
          ],
        ),
      ),
    );
  }
}
