import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(
    MyApp(), // Wrap your app
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Home Screen'),
      ),
      body: LayoutBuilder(

        builder: (context, Container) {
          final width = Container.maxWidth;
          final hight = Container.maxHeight;
          if (Container.maxWidth < 600) {
            return Text('Mobile Screen');
          }
          if () {
            return Text('Tablet Screen');
          } else {
            return Text('Desktop Screen');
          }
        },
      ),
    );
  }
}
