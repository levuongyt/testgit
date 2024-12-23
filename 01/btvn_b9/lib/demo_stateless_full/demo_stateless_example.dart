import 'package:flutter/material.dart';

class DemoStateLessScreen extends StatelessWidget {
  const DemoStateLessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Demo StateLess',
        style: Theme.of(context).textTheme.bodyMedium,),
      ),
    );
  }
}


/// Scaffold
///   appBar
///     Titile :Text
///   body: Container
///     Column
///       Row
///        Image
///       Row
///        Icon Text Icon ...
///