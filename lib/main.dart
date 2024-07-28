import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.amber,),
        body:
        Container(
          height: 100,
          width: 100,
          color: Colors.amber.shade50,
          child: Text('Container'),),
      ),
    );
  }
}
