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
  //String _email = '', _password = '';

  TextEditingController _email = new TextEditingController();
  TextEditingController _password = new TextEditingController();
  TextEditingController _username = new TextEditingController();

  bool isLoading = false;

  final formKey = GlobalKey<FormState>();

  final auth = FirebaseAuth.instance;

  signState(){
    if(formKey.currentState!.validate()){
        setState(() {
          isLoading = true;
        });

        auth.createUserWithEmailAndPassword(email: _email.text, password: _password.text,).then((value){
          print("$value");
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.transparent,
      body: isLoading ? Container(
        child: Center(child: CircularProgressIndicator()),
      ) : Container(
        child: Center(
          child: Container(
            decoration: BoxDecoration(gradient: LinearGradient(
            begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [const Color(0xFF411d73),
                const Color(0xFF012340),
                const Color(0xFF0d0d0d)])),
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Form(
                    key: formKey,
                      child: Column(
                        children: [TextField(
                      style: inputTextStyle(),
                      decoration: textFieldDecoration("username"),
                            onChanged: (value) {
                              setState(() {
                                _username.text = value;
                              });
                            }
                  ),
                      TextFormField(
                        validator: (val){
                          return RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val!) ?
                          null : "Enter correct email";
                        },
                          keyboardType: TextInputType.emailAddress,
                          style: inputTextStyle(),
                          decoration: textFieldDecoration("email"),
                          onChanged: (value) {
                            setState(() {
                              _email.text = value;
                            });
                          }
                      ),
                      TextFormField(
                        validator: (val){
                          return val!.isEmpty || val.length < 6 ? "Can't be less than 6 characters" : null;
                        },
                          obscureText: true,
                          style: inputTextStyle(),
                          decoration: textFieldDecoration("password"),
                          onChanged: (value) {
                            setState(() {
                              _password.text = value.trim();
                            });
                          }
                      ),],
                  )),

                  SizedBox(height: 8,),
                  GestureDetector(
                    onTap: (){
                      signState();
                      Navigator.pushReplacement(
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
                              const Color(0xffd64086),
                              const Color(0xffa740d6),
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
