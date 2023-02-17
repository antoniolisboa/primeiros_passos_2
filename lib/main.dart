import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final Color primaryColor = Colors.amberAccent;
  final Color textColor = Colors.black87;

  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        leading: Icon(
          Icons.add_task,
          color: textColor,
        ),
        title: Text(
          'Primeiros Passos II',
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            MyWidget(
              colorOne: Colors.white,
              colorTwo: Colors.pinkAccent,
              colorThree: Colors.lightBlueAccent,
            ),
            MyWidget(
              colorOne: Colors.pink,
              colorTwo: Colors.purple,
              colorThree: Colors.blue,
            ),
            MyWidget(
              colorOne: Colors.pinkAccent,
              colorTwo: Colors.amber,
              colorThree: Colors.lightBlue,
            ),
            MyWidget(
              colorOne: Colors.purpleAccent,
              colorTwo: Colors.white,
              colorThree: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  final Color colorOne;
  final Color colorTwo;
  final Color colorThree;

  const MyWidget({
    required this.colorOne,
    required this.colorTwo,
    required this.colorThree,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 150,
            width: 110,
            decoration: BoxDecoration(
              color: colorOne,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 4,
                color: Colors.black87,
              ),
            ),
          ),
          Container(
            height: 150,
            width: 110,
            decoration: BoxDecoration(
              color: colorTwo,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 4,
                color: Colors.black87,
              ),
            ),
            child: const Icon(
              Icons.people,
              size: 38,
            ),
          ),
          Container(
            height: 150,
            width: 110,
            decoration: BoxDecoration(
              color: colorThree,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                width: 4,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
