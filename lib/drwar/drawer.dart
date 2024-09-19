import 'package:flutter/material.dart';
import 'package:flutter_application_1/drwar/commoncontainer.dart';

class DrawerSlid extends StatelessWidget {
  const DrawerSlid({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white.withOpacity(0.85),
      shadowColor: Colors.black,
      width: 280,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: EdgeInsets.only(top: 5, left: 10)),
          Text(
            'Gmail',
            style: TextStyle(
                color: Colors.red, fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Padding(padding: EdgeInsets.only(top: 8)),
          Divider(),
          // Container(
          //   height: 40,
          //   width: 270,
          //   decoration: BoxDecoration(
          //       color: Colors.blue,
          //       borderRadius: BorderRadius.only(
          //           topRight: Radius.circular(40),
          //           bottomRight: Radius.circular(40))),
          // )
          Commoncontainer(),
          Divider(),
          Commoncontainer(),
          SizedBox(height: 5),
          Commoncontainer(),
          SizedBox(height: 5),
          Commoncontainer(),
          SizedBox(height: 5),
          Commoncontainer(),
          SizedBox(height: 5),
          Commoncontainer(),
          SizedBox(height: 5),
          Commoncontainer(),
          SizedBox(height: 5),
          Commoncontainer(),
          SizedBox(height: 5),
          Commoncontainer(),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
