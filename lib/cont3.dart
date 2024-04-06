import 'package:flutter/material.dart';

class appu extends StatelessWidget {
  const appu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container3Screen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Container3Screen extends StatefulWidget {
  const Container3Screen({super.key});

  @override
  State<Container3Screen> createState() => _Container3ScreenState();
}

class _Container3ScreenState extends State<Container3Screen> {
  var controller1 = TextEditingController();
  var controller2 = TextEditingController();
  var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("calculator")),
      body: Container(
          color: Color.fromARGB(255, 210, 244, 74),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                TextField(
                  keyboardType: TextInputType.number,
                  controller: controller1,
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  controller: controller2,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            var num1 = int.parse(controller1.text.toString());
                            var num2 = int.parse(controller2.text.toString());
                            var sum = num1 + num2;
                            result = "$sum";
                            setState(() {});
                          },
                          child: Text("add")),
                      ElevatedButton(
                          onPressed: () {
                            var num1 = int.parse(controller1.text.toString());
                            var num2 = int.parse(controller2.text.toString());
                            var diff = num1 - num2;
                            result = "$diff";
                            setState(() {});
                          },
                          child: Text("subtract")),
                      ElevatedButton(
                          onPressed: () {
                            var num1 = int.parse(controller1.text.toString());
                            var num2 = int.parse(controller2.text.toString());
                            var multiplication = num1 * num2;
                            result = "$multiplication";
                            setState(() {});
                          },
                          child: Text("multiply")),
                      ElevatedButton(
                          onPressed: () {
                            var num1 = int.parse(controller1.text.toString());
                            var num2 = int.parse(controller2.text.toString());
                            var did = num1 / num2;
                            result = "$did";
                            setState(() {});
                          },
                          child: Text("divide"))
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(21),
                    child: Text(result,
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 247, 119, 219))))
              ]),
            ),
          )),
    );
  }
}
