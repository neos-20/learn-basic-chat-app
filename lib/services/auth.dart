import 'package:firebase_auth/firebase_auth.dart';
import 'package:simple_chat_app/model/fbUser.dart';
//import 'package:flutter/material.dart';

class AuthMethods{

  final FirebaseAuth _auth = FirebaseAuth.instance;

  FbUser _userFromFirebaseUser(User user){
    return user !=null ? FbUser(userId: user.uid) : null;
  }

  Future signInWithEmailAndPassword(String email, String password) async {
    try{
      UserCredential result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      User firebaseUser = result.user;
      return _userFromFirebaseUser(firebaseUser);

    }catch(e){

    }
  }
}