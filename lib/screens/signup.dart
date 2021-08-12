import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_chat_app/services/google_sign_in.dart';
import 'package:simple_chat_app/widgets/widgets.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController userNameController = new TextEditingController();
  TextEditingController emailController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

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
                  TextField(
                    controller: userNameController,
                      style: inputTextStyle(),
                      decoration: textFieldDecoration("username")
                  ),
                  TextField(
                    controller: emailController,
                      style: inputTextStyle(),
                      decoration: textFieldDecoration("email")
                  ),
                  TextField(
                    controller: passwordController,
                      obscureText: true,
                      style: inputTextStyle(),
                      decoration: textFieldDecoration("password")
                  ),
                  SizedBox(height: 8,),
                  Container(

                    alignment: Alignment.centerRight,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: Text('Forgot Password ?', style: inputTextStyle(),),
                    ),
                  ),
                  SizedBox(height: 8,),
                  Container(
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
                  SizedBox(height: 16,),
                  GestureDetector(
                    onTap: (){
                      final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                      provider.googleLogIn();
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Sign Up with ', style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17,
                          ),
                          ),
                          Image.network('http://pngimg.com/uploads/google/google_PNG19635.png',height: 20,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Already have an account. ', style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,),
                      ),
                      Text('Log In', style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15,
                        decoration: TextDecoration.underline,
                      ),),
                    ],
                    // SIGN UP WITH GITHUB BEGIN:
                    /*  SizedBox(height: 16,),
                  Container(
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
                    child: Text('Sign Up with Github', style: TextStyle(
                      color: Colors.white70,
                      fontSize: 17,
                    ),),
                  ),*/
                    // SIGN UP WITH GITHUB END:

                  ),
                ]
            ),
          ),
        ),
      ),
      appBar: appBarMain(context),);
  }
}
