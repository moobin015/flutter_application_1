import 'package:flutter/material.dart';

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
          if (width < 640) {
            return Center(
              child: Column(
                children: [
                  Text(
                    'Thi is Phone Screen',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Width : $width',
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            );
          } else if (width < 1007 && width > 641) {
            return Center(
              child: Column(
                children: [
                  Text(
                    'Thi is Tablet Screen',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Width : $width',
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            );
          } else {
            return Center(
              child: Column(
                children: [
                  Text(
                    'Thi is Desktop Screen',
                    style: TextStyle(fontSize: 25),
                  ),
                  Text(
                    'Width : $width',
                    style: TextStyle(fontSize: 25),
                  )
                ],
              ),
            );
          }
        },
      ),
    );
  }
}
