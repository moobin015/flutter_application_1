import 'package:flutter/material.dart';


void main() {
  runApp(HomeScrine());
}

class HomeScrine extends StatelessWidget {
  const HomeScrine({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text('data'),
      ),
      body: Container(
        height: 300,
        width: 300,
        color: Colors.amber,
        child: Text(
          'This is text',
          textDirection: TextDirection.ltr,
          //textAlign: TextAlign.end,

          style: TextStyle(
            fontSize: 80,
            shadows:const [
              Shadow(
                color: Colors.white,
                blurRadius: 6,
                offset: Offset(2, 5),
              )
            ],
            decoration:TextDecoration.combine([
              TextDecoration.lineThrough,
              TextDecoration.overline
            ]) ,
            wordSpacing: 2,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
