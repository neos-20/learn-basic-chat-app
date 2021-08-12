import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//import 'package:simple_chat_app/screens/signin.dart';
import 'package:simple_chat_app/screens/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:simple_chat_app/services/google_sign_in.dart';

/*void main() {
  runApp(MyApp());
}*/

Future main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => GoogleSignInProvider(),
    child : MaterialApp(
        title: 'Neos Chat',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SignUp(),
      ),
  );
}

