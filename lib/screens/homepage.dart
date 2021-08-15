import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:simple_chat_app/screens/chatRooms.dart';
import 'package:simple_chat_app/screens/signin.dart';
import 'package:simple_chat_app/screens/signup.dart';
import 'package:simple_chat_app/services/google_sign_in.dart';
import 'package:simple_chat_app/widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool isLoading = false;



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
                      const Color(0xFF0d0d0d)])),
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                        Navigator.push(
                                context,
                        MaterialPageRoute(builder: (context) => SignUp()),
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Sign Up with ', style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17,
                          ),
                          ),
                          Icon(FontAwesomeIcons.solidEnvelope, size: 16,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Sign Up with ', style: TextStyle(
                          color: Colors.white70,
                          fontSize: 17,
                        ),
                        ),
                        Icon(FontAwesomeIcons.phoneAlt, size: 16,),
                      ],
                    ),
                  ),
                  SizedBox(height: 16,),
                  GestureDetector(
                    onTap: (){
                      final provider = Provider.of<GoogleSignInProvider>(context, listen: false);
                      provider.googleLogIn();
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('Sign Up with ', style: TextStyle(
                            color: Colors.white70,
                            fontSize: 17,
                          ),
                          ),
                          Icon(FontAwesomeIcons.google, size: 16,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  Container(
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('Sign Up with ', style: TextStyle(
                          color: Colors.white70,
                          fontSize: 17,
                        ),
                        ),
                        Icon(FontAwesomeIcons.github, size: 16,),
                      ],
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