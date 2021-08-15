import 'package:flutter/material.dart';
//import 'package:simple_chat_app/services/auth.dart';
import 'package:simple_chat_app/widgets/widgets.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key}) : super(key: key);

  @override
  _ChatRoomState createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.transparent,
        body: Container(
            child: Center(
            child: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [const Color(0xFF411d73),
              const Color(0xFF012340),
              const Color(0xFF0d0d0d)])),),
        ),
      ),
      appBar: appBarRoom(context),
    );
  }
}
