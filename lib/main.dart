import 'package:flutter/material.dart';
import 'package:flutter_application_1/YouTub/youtubtest.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Youtubtest(),

      ///class test
      // Home(),
    );
  }
}
/**
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Screan();
}

class Screan extends State<Home> {
  final TextEditingController _one = TextEditingController();
  final TextEditingController _tow = TextEditingController();
  final GlobalKey<FormState> _formkye = GlobalKey<FormState>();
  double _result = 0;
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
      body: Padding(
        padding: EdgeInsets.all(22),
        child: Form(
          key: _formkye,
          child: Column(
            children: [
              TextFormField(
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Input kye';
                  }
                  return null;
                },
                controller: _one,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Input'),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Input kye';
                  } else {
                    return null;
                  }
                },
                controller: _tow,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Input'),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(onPressed: add, child: Text('+')),
                  OutlinedButton(onPressed: remove, child: Text('-')),
                  OutlinedButton(onPressed: into, child: Text('*')),
                  OutlinedButton(onPressed: divider, child: Text('/')),
                ],
              ),
              SizedBox(height: 20),
              Text('Resul : $_result')
            ],
          ),
        ),
      ),
      // body: Center(child: Text('Counter number $counter')),
      // floatingActionButton: buildFloatingActionButton(context),
    );
  }

  FloatingActionButton buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          counter++;
          setState(() {
            Snacbar('sms', context);
          });
        },
        child: Icon(Icons.add));
  }

  void add() {
    if (_formkye.currentState!.validate()) {
      double one = double.tryParse(_one.text) ?? 0;
      double tow = double.tryParse(_tow.text) ?? 0;
      _result = one + tow;
      setState(() {});
    }
  }

  void remove() {
    if (_formkye.currentState!.validate()) {
      double one = double.tryParse(_one.text) ?? 0;
      double tow = double.tryParse(_tow.text) ?? 0;
      _result = one - tow;
      setState(() {});
    }
  }

  void into() {
    if (_formkye.currentState!.validate()) {
      double one = double.tryParse(_one.text) ?? 0;
      double tow = double.tryParse(_tow.text) ?? 0;
      _result = one * tow;
      setState(() {});
    }
  }

  void divider() {
    if (_formkye.currentState!.validate()) {
      double one = double.tryParse(_one.text) ?? 0;
      double tow = double.tryParse(_tow.text) ?? 0;
      _result = one / tow;
      setState(() {});
    }
  }

  bool valid() {
    if (_one.text.isEmpty) {
      return false;
    } else if (_tow.text.isEmpty) {
      return false;
    } else {
      return true;
    }
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
 */
