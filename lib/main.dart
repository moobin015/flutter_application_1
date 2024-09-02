import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Screan();
}

class Screan extends State<Home> {
  //counter
  int counter = 0;

  //end counter
  //snacbar
  Snacbar(sms, context) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(sms)));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Home'), centerTitle: true),
      body: Center(child: Text('Counter number $counter')),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            counter++;
            setState(() {
              Snacbar('sms', context);
            });
          },
          child: Icon(Icons.add)),
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({super.key});
//
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   ///counter number
//   int one = 0;
//
//   MySnac(sms, context) {
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(sms)));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: Center(
//         child: Text('Counter $one'),
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               one--;
//               print(one);
//               setState(() {
//                 MySnac('$one', context);
//               });
//             },
//             child: Icon(Icons.remove),
//           ),
//           SizedBox(width: 10),
//           FloatingActionButton(
//             onPressed: () {
//               one++;
//               print(one);
//               setState(() {
//                 MySnac('$one', context);
//               });
//             },
//             child: Icon(Icons.add),
//           ),
//         ],
//       ),
//     );
//   }
// }
