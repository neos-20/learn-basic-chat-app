import 'package:flutter/material.dart';

PreferredSizeWidget appBarMain(BuildContext context){
  return AppBar(
    title: Center(child: Text('TODO'),),
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
          borderSide: BorderSide(color: Colors.white54)
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