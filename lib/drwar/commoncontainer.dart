import 'package:flutter/material.dart';

class Commoncontainer extends StatefulWidget {
  const Commoncontainer({super.key});

  @override
  State<Commoncontainer> createState() => _CommoncontainerState();
}

class _CommoncontainerState extends State<Commoncontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 270,
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.2),
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(45),
          bottomRight: Radius.circular(45),
        ),
      ),
      child: const ListTile(
        title: TextButton(
          onPressed: null,
          child: Text(
            'All inbox',
            style: TextStyle(color: Colors.black),
          ),
        ),
        leading: Icon(Icons.image, color: Colors.black),
      ),
    );
  }
}
