import 'package:flutter/material.dart';
import 'cont1.dart';
import 'cont2.dart';
import 'cont3.dart';
import 'cont4.dart';
//import 'cont5.dart';
import 'splash.dart';
import 'cont6.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: splashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class home_page extends StatelessWidget {
  home_page({super.key});
  final ScrollController controlit = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Title(
            color: Color.fromARGB(255, 141, 161, 154),
            child: Text(
              'EVERYTHING',
            )),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('first.jpg'),
            radius: 20,
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 237, 240, 236),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Color.fromARGB(255, 82, 78, 78),
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle drawer item 1 click.
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle drawer item 1 click.
              },
            ),
            ListTile(
              title: Text('Item 3'),
              onTap: () {
                // Handle drawer item 2 click.
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 90, 96, 90),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(8)),
                  Container(
                    alignment: Alignment.bottomCenter,
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 233, 145, 251),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Container1Screen())));
                        },
                        child: Text("grid view"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Container2Screen())));
                        },
                        child: Text('list_view')),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 233, 145, 251),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(8)),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => appu())));
                        },
                        child: Text(
                          'stateful calculator',
                          style: TextStyle(fontSize: 13),
                        )),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 233, 145, 251),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Container4Screen())));
                        },
                        child: Text(
                          'API Integration_1',
                          style: TextStyle(fontSize: 13),
                        )),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 233, 145, 251),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(8)),
                  Container(
                    alignment: Alignment.bottomCenter,
                    // child: ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: ((context) => Container5Screen())));
                    //     },
                    //     child: Text('API Integration_2')),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 233, 145, 251),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Container6Screen())));
                        },
                        child: Text('click here')),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 233, 145, 251),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(8)),
                  Container(
                    alignment: Alignment.bottomCenter,
                    // child: ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: ((context) => Container5Screen())));
                    //     },
                    //     child: Text('click here')),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 233, 145, 251),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Container6Screen())));
                        },
                        child: Text('click here')),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 233, 145, 251),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(8)),
                  Container(
                    alignment: Alignment.bottomCenter,
                    // child: ElevatedButton(
                    //     onPressed: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: ((context) => Container5Screen())));
                    //     },
                    //     child: Text('click here')),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 233, 145, 251),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => Container6Screen())));
                        },
                        child: Text('click here')),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 233, 145, 251),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
