import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          //  useMaterial3: true,
          //  textTheme: TextTheme(
          //    bodyMedium: TextStyle(
          //      color: Colors.white,
          //      fontSize: 25
          //    )
          //  )
          ),
      home: const ScreenApp(),
    );
  }
}

class ScreenApp extends StatefulWidget {
  const ScreenApp({super.key});

  @override
  State<ScreenApp> createState() => _ScreenAppState();
}

class _ScreenAppState extends State<ScreenApp> {
  int demCounter = 0;
  Color likeIconColor = Colors.black;
  void xuLyLike() {
    setState(() {
      // likeIconColor= likeIconColor == Colors.black ? Colors.red : Colors.black;
      if (likeIconColor == Colors.black) {
        likeIconColor = Colors.red;
      } else {
        likeIconColor = Colors.black;
      }
    });
  }

  // void xuLyCounter() {
  //   setState(() {demCounter++;});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
            child: Text(
          'Homework',
          style: TextStyle(color: Colors.white),
        )),
      ),
      floatingActionButton: TextButton(
        onPressed: () {
          setState(() {
            demCounter++;
          });
        },
        child: Container(
          height: 70,
          width: 70,
          decoration: const BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Image.asset('assets/images/chimcu1.jpeg'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    LikeBT(
                      likeIconColor: likeIconColor,
                      OnPressed: xuLyLike,
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.comment),
                    ),
                    Text('Comment'),
                  ],
                ),
                const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.share),
                    ),
                    Text(
                      'Share',
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 310),
            child: Text('currentCounter : $demCounter'),
          ),
        ],
      ),
    );
  }
}

class LikeBT extends StatelessWidget {
  final Color likeIconColor;
  final Function OnPressed;
  const LikeBT(
      {super.key, required this.likeIconColor, required this.OnPressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () => OnPressed(),
          icon: Icon(Icons.favorite, size: 20, color: likeIconColor),
        ),
        const Text('Like'),
      ],
    );
  }
}
