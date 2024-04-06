import 'dart:async';
import 'dart:convert';
import 'package:flutter_application_1/modals/post_modals.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Container4Screen extends StatefulWidget {
  const Container4Screen({super.key});

  @override
  State<Container4Screen> createState() => _Container4ScreenState();
}

class _Container4ScreenState extends State<Container4Screen> {
  List<PostModals> postlist = [];
  Future<List<PostModals>> getPostApi() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> i in data) {
        postlist.add(PostModals.fromJson(i));
      }
      return postlist;
    } else {
      return postlist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("API"),
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: FutureBuilder(
                  future: getPostApi(),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return Text("Ruko zara sabr karo");
                    } else {
                      return ListView.builder(
                          itemCount: postlist.length,
                          itemBuilder: (context, index) {
                            return Card(
                                child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Column(children: [
                                      Text(
                                        'Title',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontSize: 15),
                                      ),
                                      Text(postlist[index].body.toString()),
                                      Text('Title' +
                                          postlist[index].body.toString()),
                                      Text(
                                        'Description',
                                        style: TextStyle(
                                            fontStyle: FontStyle.italic,
                                            fontSize: 15),
                                      ),
                                      Text('Description' +
                                          postlist[index].body.toString())
                                    ])));
                          });
                    }
                  }),
            )
          ],
        ),
      ),
    );
  }
}
