import 'package:flutter/material.dart';

class Container2Screen extends StatelessWidget {
  const Container2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> containers = List.generate(
      20,
      (index) => Container(
        height: 120,
        margin: EdgeInsets.all(10),
        color: Color.fromARGB(255, 97, 238, 156),
        child: Center(
          child: Text(
            'box $index++',
            style: TextStyle(
                color: const Color.fromARGB(255, 211, 7, 7), fontSize: 20),
          ),
        ),
      ),
    );

    return ListView(
      children: containers,
    );
  }
}
