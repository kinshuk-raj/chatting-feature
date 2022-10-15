//
// import 'package:flutter/material.dart';
// import 'package:stream_chat_flutter/stream_chat_flutter.dart';
// import 'chatting.dart';
// import 'main.dart';
//
//
// class Chat extends StatefulWidget {
//   const Chat({Key? key}) : super(key: key);
//
//   @override
//   State<Chat> createState() => _ChatState();
// }
//
// class _ChatState extends State<Chat> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//               icon: const Icon(Icons.arrow_back, color: Colors.white),
//               onPressed: () =>
//                   Navigator.of(context).pop()
//             // Navigator.push(
//             //   context,
//             //   MaterialPageRoute(builder: (context) => const Chatting()),
//             // );
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.deepPurple,
//           title: const Text('Messages'),
//           actions: [
//             IconButton(
//               iconSize: 45,
//               icon: Image.asset('assets/switch4.png'),
//
//               onPressed: () {
//
//               },
//             ),
//           ],
//         ),
//         body: SafeArea(
//             child: Container(
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage("assets/PNG.png"),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               child: Column(
//                 children:  [
//                   Expanded(child: StreamChannel(
//                     channel: channel,
//                     child: Chatting(),
//                   ),
//                   ),
//                   NewMessageWidget(),
//                 ],
//               ),
//             )));
//   }
// }
//
//
//
//
//
//
//
//
//
//
// class NewMessageWidget extends StatefulWidget {
//   const NewMessageWidget({Key? key}) : super(key: key);
//
//   @override
//   State<NewMessageWidget> createState() => NewMessageWidgetState();
// }
//
// class NewMessageWidgetState extends State<NewMessageWidget> {
//   final _controller = TextEditingController();
//   String message= '';
//
//
//   @override
//   Widget build(BuildContext context) => Container(
//     color: Colors.transparent,
//     padding: EdgeInsets.all(8),
//     child: Row(
//       children: <Widget>[
//         Expanded(
//           child: TextField(
//             controller: _controller,
//             textCapitalization: TextCapitalization.sentences,
//             autocorrect: true,
//             enableSuggestions: true,
//             decoration: InputDecoration(
//                 filled: true,
//                 fillColor: Colors.white,
//                 hintText: 'Type Your Message',
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide(width: 0.5),
//                   gapPadding: 10,
//                   borderRadius: BorderRadius.circular(25),
//                 )
//             ),
//             onChanged: (value)=> setState(() {
//               message = value;
//             }),
//           ),
//         ),
//         SizedBox(width: 20),
//         GestureDetector(
//           onTap: (){}, // message.trim().isEmpty? null: sendMessage,
//           child: Container(
//             padding: EdgeInsets.all(8),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.deepPurple,
//             ),
//             child: Icon(Icons.send,
//               color: Colors.white,)
//             ,
//           ),
//         )
//       ],
//     ),
//   );
// }
//
//
//
