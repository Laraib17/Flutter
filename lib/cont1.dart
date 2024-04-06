import 'package:flutter/material.dart';

class Container1Screen extends StatelessWidget {
  const Container1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("grid"),
        ),
        body: Container(
          child: GridView.count(crossAxisCount: 4, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.amberAccent),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Color.fromARGB(255, 64, 89, 255)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Color.fromARGB(255, 23, 208, 249)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Color.fromARGB(255, 249, 23, 42)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Color.fromARGB(255, 226, 128, 9)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Color.fromARGB(255, 12, 226, 19)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Color.fromARGB(255, 99, 98, 94)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Colors.amberAccent),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Color.fromARGB(255, 64, 89, 255)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Color.fromARGB(255, 23, 208, 249)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Color.fromARGB(255, 249, 23, 42)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Color.fromARGB(255, 226, 128, 9)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Color.fromARGB(255, 12, 226, 19)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(color: Color.fromARGB(255, 99, 98, 94)),
            )
          ]),
        ));
  }
}
