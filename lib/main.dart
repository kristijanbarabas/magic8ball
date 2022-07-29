import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

String title = 'Ask Me Anything';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int random = 1;

  Future<void> getAnswer() async {
    random = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text(title),
        ),
        body: Container(
          color: Colors.blue,
          child: Center(
              child: TextButton(
                  onPressed: () {
                    setState(() {
                      getAnswer();
                    });
                  },
                  child: Image.asset('images/ball$random.png'))),
        ),
      ),
    );
  }
}
