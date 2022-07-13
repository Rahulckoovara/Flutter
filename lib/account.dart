import 'package:ebloodbank/bloodbank_login_screen.dart';
import 'package:ebloodbank/user_blood.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class account extends StatefulWidget {
  const account({Key? key}) : super(key: key);

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  User? user = FirebaseAuth.instance.currentUser;
  userblood loggedInUser = userblood();


  @override
   void initState() {
    super.initState();
   FirebaseFirestore.instance
        .collection("BLOODBANK")
        .doc(user!.uid)
        .get()
        .then((value) {
      this.loggedInUser = userblood.fromMap(value.data());
      setState(() {});
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue,
      actions: [
     TextButton.icon(onPressed: (){
           logout(context);
          },icon: Icon(Icons.logout),
          label: Text('logout',style: TextStyle(color: Colors.white)),
          // child: Text('logout',style: TextStyle(color: Colors.white),
          ),
          
            
          
      ],
      )
      ,
      
      
      body: SafeArea(child: 
      Center(
        child: Column(
          children: [
            
            
            SizedBox(height: 10,),
            Text('WELCOME BLOODBANK',style: TextStyle(fontWeight:
             FontWeight.bold,color: Colors.red,
             fontSize: 30)
             ,),
              Text("${loggedInUser.nameofbloodbank}",
              style: TextStyle(fontSize: 20,color: Colors.black),),
  
          
          ],
        ),
      ))
    );
    
  }
   Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Bloodbank_login_screen()));
  }
}
