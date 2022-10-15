// import 'main.dart';
// import 'package:flutter/material.dart';
//
//
//
// class ChannelPage extends StatelessWidget {
//   const ChannelPage({
//     Key key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: StreamChannelHeader(),
//       body: Column(
//         children: <Widget>[
//           Expanded(
//             child: StreamMessageListView(
//               threadBuilder: (_, parentMessage) {
//                 return ThreadPage(
//                   parent: parentMessage,
//                 );
//               },
//             ),
//           ),
//           StreamMessageInput(),
//         ],
//       ),
//     );
//   }
// }