// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class Container5Screen extends StatefulWidget {
//   const Container5Screen({super.key});

//   @override
//   State<Container5Screen> createState() => _Container5ScreenState();
// }

// class _Container5ScreenState extends State<Container5Screen> {
//   List<photos> photo_list = [];
//   Future<List<photos>> getphotos() async {
//     final x =
//         await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
//     var data = jsonDecode(x.body.toString());

//     if (x.statusCode == 200) {
//       for (Map<String, dynamic> i in data) {
//         photos y = photos(id: i('id'), name: i('name'));
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// class photos {
//   String id, name;
//   photos({required this.id, required this.name});
// }
