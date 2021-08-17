import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethods{

  getUserByUsername(String username){

  }

  uplaodUserInfo(userMap){
    FirebaseFirestore.instance.collection("users")
    .add(userMap);
  }
}