import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import 'drwar/drawer.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        drawer: DrawerSlid(),
        body: Center(
          child: Column(
            children: [
              // Image.asset('asset/image/img.png', height: 100, width: 100),
              // SizedBox(height: 10,),
              Container(
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        'https://as2.ftcdn.net/v2/jpg/03/26/98/51/1000_F_326985142_1aaKcEjMQW6ULp6oI9MYuv8lN9f8sFmj.jpg',
                      ),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle,
                  border: GradientBoxBorder(
                    width: 5,
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [
                        Colors.yellow,
                        Colors.red,
                        Colors.black,
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text('This is one tow  Three'),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child:  Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {},
          mini: true,
          // highlightElevation: 50,
          // backgroundColor: Colors.blue,
          // shape: RoundedRectangleBorder(
          //   borderRadius: BorderRadius.only(
          //     topLeft: Radius.circular(10),
          //     bottomRight: Radius.circular(10),
          //   ),
        ),
      ),
    );
  }
}
