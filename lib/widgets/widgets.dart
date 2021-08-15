import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_chat_app/screens/signin.dart';
//import 'package:simple_chat_app/services/auth.dart';

PreferredSizeWidget appBarMain(BuildContext context){
  return AppBar(
    title: Center(
      child: Row(
        children: [
          Flexible(child: Image.asset("assets/images/neos.jpg", height: 20, width: 20,)),
          Text('TODO'),
        ],
      ),
    ),
    flexibleSpace: Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              const Color(0xFF4840d6),
              const Color(0xFFa740d6),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
    ),
  );
}

PreferredSizeWidget appBarRoom(BuildContext context){
  final FirebaseAuth _auth = FirebaseAuth.instance;

  logOut() async {
    return await _auth.signOut();
  }
  return AppBar(
    title: Center(
      child: Row(
        children: [
          Flexible(child: Image.asset("assets/images/neos.jpg", height: 20, width: 20,)),
          Text('TODO'),
        ],
      ),
    ),
    actions: [
      GestureDetector(
        onTap: (){
          logOut();
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => SignIn()),
          );
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
            child: Icon(Icons.exit_to_app)),
      ),
    ],
    flexibleSpace: Container(
      decoration: new BoxDecoration(
        gradient: new LinearGradient(
            colors: [
              const Color(0xFF4840d6),
              const Color(0xFFa740d6),
            ],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
    ),
  );
}

InputDecoration textFieldDecoration(String hintText){
  return InputDecoration(hintText: hintText,
      hintStyle: TextStyle(
        color: Colors.grey,
      ),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white)
      ),
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey)
      )
  );
}

TextStyle inputTextStyle(){
  return TextStyle(
    color: Colors.white70,
    fontSize: 16,
  );
}