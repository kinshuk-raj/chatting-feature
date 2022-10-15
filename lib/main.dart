import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
// import 'guideline.dart';

void main() async {
  /// Create a new instance of [StreamChatClient] passing the apikey obtained from your
  /// project dashboard.
  final client = StreamChatClient(
    'b67pax5b2wdq',
    logLevel: Level.INFO,
  );

  /// Set the current user. In a production scenario, this should be done using
  /// a backend to generate a user token using our server SDK.
  /// Please see the following for more information:
  /// https://getstream.io/chat/docs/flutter-dart/tokens_and_authentication/?language=dart
  await client.connectUser(
    User(id: 'tutorial-flutter'),
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoidHV0b3JpYWwtZmx1dHRlciJ9.S-MJpoSwDiqyXpUURgO5wVqJ4vKlIVFLSEyrFYCOE1c',
  );

  /// Creates a channel using the type `messaging` and `flutterdevs`.
  /// Channels are containers for holding messages between different members. To
  /// learn more about channels and some of our predefined types, checkout our
  /// our channel docs: https://getstream.io/chat/docs/flutter-dart/creating_channels/?language=dart
  final channel = client.channel('messaging', id: 'flutterdevs');

  /// `.watch()` is used to create and listen to the channel for updates. If the
  /// channel already exists, it will simply listen for new events.
  await channel.watch();

  runApp(
    MyApp(
      client: client,
      channel: channel,
    ),
  );
}

class MyApp extends StatelessWidget {
  /// To initialize this example, an instance of [client] and [channel] is required.
  const MyApp({
    Key? key,
    required this.client,
    required this.channel,
  }) : super(key: key);

  /// Instance of [StreamChatClient] we created earlier. This contains information about
  /// our application and connection state.
  final StreamChatClient client;

  /// The channel we'd like to observe and participate.
  final Channel channel;

  @override
  Widget build(BuildContext context) {
    final themeData =ThemeData(
      primarySwatch: Colors.deepPurple
    );
    final defaultTheme = StreamChatThemeData.fromTheme(themeData);
    final colorTheme =  defaultTheme.colorTheme;
    //ColorScheme.dark(background: Colors.cyan);
    final customTheme = defaultTheme.merge(StreamChatThemeData(
      channelPreviewTheme: StreamChannelPreviewThemeData(
        avatarTheme: StreamAvatarThemeData(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      otherMessageTheme: StreamMessageThemeData(
        messageBackgroundColor: colorTheme.textHighEmphasis,
        messageTextStyle: TextStyle(
          color: colorTheme.barsBg,
        ),
        avatarTheme: StreamAvatarThemeData(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ));
    return MaterialApp(
      theme: themeData,
      builder: (context, widget) {
        streamChatThemeData: StreamChatThemeData.fromTheme(themeData);
        return StreamChat(
          streamChatThemeData: StreamChatThemeData.fromTheme(themeData),
          client: client,
          child: widget,
        );
      },
      debugShowCheckedModeBanner: false,
      home: StreamChannel(
        channel: channel,
        child: const ChannelPage(),
      ),
    );
  }
}

/// Displays the list of messages inside the channel
class ChannelPage extends StatelessWidget {
  const ChannelPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: StreamChannelHeader(
        title: const Text('Message',
        style: TextStyle(
          color: Colors.white,
        ),
        ),
        leading:(
            IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () =>
                    Navigator.of(context).pop()
              // icon: Image.asset('assets/white-back-icon.jpg'),
              // iconSize: 5,
              // onPressed: () {},
          )),
        actions: [
          IconButton(
            icon: Image.asset('assets/switch4.png'),
            iconSize: 45,
            onPressed: () {},
          )
        ],
        showConnectionStateTile: false,
        //showConnectionStateTile: false,
        subtitle: const Text('hemlo guyz',
        style: TextStyle(
          color: Colors.white,
          fontSize: 5.00,
        ),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: SafeArea(

    // constraints: BoxConstraints.expand(),
    // decoration: const BoxDecoration(
    // image: DecorationImage(
    // image: AssetImage("assets/images/cat2.jpg"),
    // fit: BoxFit.cover),
        //),

        child: Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
          image: DecorationImage(
          image: AssetImage("assets/PNG.png"),
          fit: BoxFit.cover),
          ),

    //       decoration: const BoxDecoration(
    //   image: DecorationImage(
    //   image: AssetImage("assets/PNG.png"),
    //   fit: BoxFit.cover,
    // ),
    // ),
    child: Column(
    children: <Widget> [
    Expanded(
      child: Stack(
        children:<Widget> [
        Container(
          color: Colors.yellow,
        // constraints: BoxConstraints.expand(),
        //     decoration: BoxDecoration(
        //       image: DecorationImage(
        //           image: AssetImage("assets/PNG.png"),
        //           fit: BoxFit.cover),
        //     ),
        ),
           const StreamMessageListView(
             showFloatingDateDivider: false,)

        ]
          // child: StreamMessageListView(
          //   showFloatingDateDivider: false,
          ),


            // messageBuilder: (context, messageDetails, messageList, defaultWidget) {
            //   return defaultWidget.copyWith(
            //     messageTheme: StreamMessageThemeData(
            //      // messageBackgroundColor: Colors.purple,
            //     messageTextStyle: TextStyle(),
            //   ),
            //   );
            // },
            // StreamMessageThemeData(
            //   reactionsBackgroundColor: Colors.red,
            //   reactionsBorderColor: Colors.redAccent,
            //   reactionsMaskColor: Colors.pink,
            // ),
            // messageHighlightColor: Colors.purple,
            // //style: TextStyle(),

        ),
        StreamMessageInput(
          elevation: 10,
          shadow: BoxShadow(blurRadius: 0),

        )
    ],
    ),
    )
    )
    );
  }
}





// Column(
//   children: const <Widget>[
//     Expanded(
//       child: StreamMessageListView(),
//     ),
//     StreamMessageInput(),
//   ],
// ),