import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_chat_app/screens/chatRooms.dart';
import 'package:simple_chat_app/services/google_sign_in.dart';
import 'package:simple_chat_app/widgets/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String _email = '', _password = '';
  final auth = FirebaseAuth.instance;

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
                    colors: [const Color(0xFF4840d6),
                      const Color(0xFFa740d6),])),
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /*TextField(
                      style: inputTextStyle(),
                      decoration: textFieldDecoration("username"),
                  ),*/
                  TextField(
                      keyboardType: TextInputType.emailAddress,
                      style: inputTextStyle(),
                      decoration: textFieldDecoration("email"),
                    onChanged: (value) {
                        setState(() {
                          _email = value.trim();
                        });
                    }
                  ),
                  TextField(
                      obscureText: true,
                      style: inputTextStyle(),
                      decoration: textFieldDecoration("password"),
                      onChanged: (value) {
                        setState(() {
                        _password = value.trim();
                        });
                    }
                  ),
                  SizedBox(height: 8,),
                  GestureDetector(
                    onTap: (){
                      auth.createUserWithEmailAndPassword(email: _email, password: _password,);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatRoom()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              const Color(0xffa740d6),
                              const Color(0xffd64086),
                            ]
                        ),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text('Sign Up', style: TextStyle(
                        color: Colors.white70,
                        fontSize: 17,
                      ),),
                    ),
                  ),
                ]
            ),
          ),
        ),
      ),
      appBar: appBarMain(context),);
  }
}
