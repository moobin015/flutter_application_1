import 'package:flutter/material.dart';

class Youtubtest extends StatelessWidget {
  const Youtubtest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Appbar List View')),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${index+1} মৌ আমার বউ ',style: const TextStyle(fontSize: 20),),
              leading: const Icon(Icons.person),
              // dense: true,
              trailing: const Text('আমি মৌ কে ভালবাসি'),

            );
          },
        )

        // Column(
        //   children: [
        //     Expanded(
        //       child: ListView.separated(
        //           itemBuilder: (context, index) {
        //             return ListTile(title: Text('${index+1}   ListTile'));
        //           },
        //           separatorBuilder: (context, index) {
        //             return Divider();
        //           },
        //           itemCount: 55),
        //     )
        //   ],
        // ),
        // color: Colors.blue,
        // Container(
        //   height: double.infinity,
        //   width: double.infinity,
        //   child: ListView.builder(
        //     itemCount: 40,
        //     itemBuilder: (context, index) {
        //       return ListTile(
        //         dense: true,
        //         title: Text('${index + 1} ListTile'),
        //         leading: const Icon(Icons.person),
        //         trailing: const Icon(Icons.call),
        //       );
        //     },
        //   ),
        // ),
        );
  }
}
