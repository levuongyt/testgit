import 'package:btvn_b9/Presentations/second_screen.dart';
import 'package:btvn_b9/demo_stateless_full/demo_stateless_example.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: Colors.red,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          )
        )
      ),
      home: const DemoStateLessScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('FIRST SCREEN'),
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const SecondScreen(
                      inputFromFirstScreen: 'Lê Minh Vương',
                    )),
          );
        },
        child: Container(
          width: 70,
          height: 60,
          color: Colors.green,
          child: const Icon(
            Icons.navigate_next_rounded,
            size: 40,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset('assets/images/anhnendt.jpg',fit: BoxFit.cover,),
        ),
    );
  }
}
