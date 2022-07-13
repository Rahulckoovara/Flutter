//import 'package:flutter/material.dart';
class userblood{
  String? nameofbloodbank;
  String? address;
  String? email;
  String? uid;



  userblood({ this.nameofbloodbank,this.address,this.email,this.uid});

   factory userblood.fromMap(map) {
    return userblood(
      uid: map['uid'],
      email: map['email'],
      nameofbloodbank: map['nameofbloodbank'],
      address: map['address'],
    );
  }
     Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'nameofbloodbank': nameofbloodbank,
      'address': address,
    };
  }


}