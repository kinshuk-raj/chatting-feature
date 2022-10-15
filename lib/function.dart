// import 'dart:convert';
// import 'dart:async';
// import 'dart:js';
// import 'dart:js';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'main.dart';
//
//
// // Future<http.Response> fetchAlbum() {
// //   return http.get(Uri.parse(' '));
// //
// //
// // }
//
// class Album {
//   final int roomId;
//
//
//   const Album({
//     required this.roomId,
//
//   });
//
//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       roomId: json['roomId'],
//
//     );
//   }
// }
//
// Future<Album> fetchAlbum() async {
//   final response = await http
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
//
//   if (response.statusCode == 200) {
//     var counter = 3;
//     final Check = Timer.periodic( Duration(seconds: 2), (timer) {
//       print(timer.tick);
//       counter--;
//       if (counter == 0) {
//         print('Cancel timer');
//         timer.cancel();
//         // Back();
//       }
//     });
//     return Album.fromJson(jsonDecode(response.body));
//   } else {
//
//     throw Exception('Failed to load album');
//   }
// }
//
//
// function_Back () {
//   Navigator.push(
//     context,
//     MaterialPageRoute(builder: (context) => const ChannelPage()),
//   );
// }
// functon_Chat(){
//   Navigator.pop(context);
//   // Navigator.of(context).pop()
// }
//
//
// var counter = 3;
// final Check = Timer.periodic( Duration(seconds: 2), (timer) {
//   print(timer.tick);
//   counter--;
//   if (counter == 0) {
//     print('Cancel timer');
//     timer.cancel();
//     // Back();
//   }
// });