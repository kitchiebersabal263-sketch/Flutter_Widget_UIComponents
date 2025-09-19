import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FAB Color Cycle',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int i = 0;
  bool isIncrementing = true;

  // Color assigned to each number from 0 to 9
  final List<Color> colorList = [
    Colors.white, // 0
    Colors.red, // 1
    Colors.orange, // 2
    Colors.yellow, // 3
    Colors.green, // 4
    Colors.teal, // 5
    Colors.blue, // 6
    Colors.indigo, // 7
    Colors.purple, // 8
    Colors.pink, // 9
  ];

  // Optional: Color names for display
  final List<String> colorNames = [
    'White',
    'Red',
    'Orange',
    'Yellow',
    'Green',
    'Teal',
    'Blue',
    'Indigo',
    'Purple',
    'Pink'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorList[i],
      appBar: AppBar(
        title: Text("FAB Color Cycle"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text(
          "Color $i: ${colorNames[i]}",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(isIncrementing ? Icons.add : Icons.remove),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        onPressed: () {
          setState(() {
            if (isIncrementing) {
              if (i < 9) {
                i++;
              } else {
                isIncrementing = false; // Reached 9, switch to decrementing
                i--; // Move to 8
              }
            } else {
              if (i > 0) {
                i--;
              } else {
                isIncrementing = true; // Reached 0, switch to incrementing
                i++; // Move to 1
              }
            }
          });
        },
      ),
    );
  }
}
