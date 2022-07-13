

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ebloodbank/account.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:ebloodbank/user_blood.dart';
class Bloodbank_signup_screen extends StatefulWidget {
  const Bloodbank_signup_screen({ Key? key }) : super(key: key);

  @override
  State<Bloodbank_signup_screen> createState() => _Bloodbank_signup_screenState();
}

class _Bloodbank_signup_screenState extends State<Bloodbank_signup_screen> {
 
    final _formKey=GlobalKey<FormState>();
    final FirebaseAuth _auth =FirebaseAuth.instance;
  final nameofbloodbankEdititngController=new TextEditingController();
   final addressEditingController=new TextEditingController();
    final emailEdititngController=new TextEditingController();
     final passwordEdititngController=new TextEditingController();
   bool _isObscure=true;
  @override
  Widget build(BuildContext context) { 

    final nameofbloodbankField= TextFormField(
      controller: nameofbloodbankEdititngController,
       validator: (value)
                      
                        {
                          if(value!.isEmpty)
                          {
                            return('Name cannot be empty');
                          }
                                if (!RegExp(r'^.{3,}$')
                                .hasMatch(value)) {
            return ("Enter Valid Name(Min. 3 Character)");
          }
                        },
      onSaved: (value){
        nameofbloodbankEdititngController.text=value!;
      },
      style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    
                    filled: true,
                    hintText: 'Name Of Blood Bank', 
                    
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white
                    ),textAlign: TextAlign.center,
    ); 
                    
      final addressField = TextFormField(
      controller: addressEditingController,
       validator: (value)
                      
                        {
                          if(value!.isEmpty)
                          {
                            return('Address cannot be empty');
                          }
                                if (!RegExp(r'^.{3,}$')
                                .hasMatch(value)) {
            return ("Enter Valid Address");
          }
                        },
      onSaved: (value){
        addressEditingController.text=value!;
      },
      style: TextStyle(color: Colors.black),
                    decoration: InputDecoration( border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    contentPadding: EdgeInsets.symmetric(vertical: 40),
                    filled: true,
                    hintText: 'Address',
                    
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white
                    ),textAlign: TextAlign.center,
                    
    );                

     final emailField= TextFormField(
      controller: emailEdititngController,
       validator: (value)
                        {
                          if(value!.isEmpty)
                          {
                            return('please enter your email');
                          }
                          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                              return ("Please Enter a valid email");
                            }

                          return null ;
                        },
      onSaved: (value){
       emailEdititngController.text=value!;
      },
      style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(prefixIcon: Icon (Icons.email, ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    filled: true,
                    hintText: 'Email id',
                    
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white
                    ),
                    textAlign: TextAlign.center
                    
    ); 

 final  passwordField= TextFormField(
      controller:  passwordEdititngController,
       validator: (value)
                      
                        {
                          if(value!.isEmpty)
                          {
                            return('please enter your password');
                          }
                                if (!RegExp(r'^.{6,}$')
                                .hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
                        },
      onSaved: (value){
         passwordEdititngController.text=value!;
      },
      obscureText: _isObscure,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                  hintText: 'Password',
                  
                  suffixIcon: IconButton(
                      icon: Icon(
                          _isObscure ? Icons.visibility_off : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        
                        }
                        );
                      }
      
                      ),
                      
                      border:OutlineInputBorder(borderRadius: BorderRadius.circular(15)
                    ), 
                    
                      filled: true,
                      fillColor: Colors.white
                      ),
                      textAlign: TextAlign.center 
                      ,
    ); 


  //--------------------------------------------------------------------------------
    return Scaffold(
       resizeToAvoidBottomInset:true , 
        backgroundColor: Colors.red,
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                key: _formKey,
                child: Column( mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                        Text('Blood Bank Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40)
                      ,)
                      ,
                      SizedBox(height: 60,),
                      nameofbloodbankField,
                      SizedBox(height: 30 ,),
                      addressField,
                      SizedBox(height: 30,),
                      emailField,
                      SizedBox(height: 30,),
                      passwordField,
                      SizedBox(height: 30,),
                      
                         ElevatedButton(
                         child:const Text('Sign Up',style: TextStyle(fontSize: 18),
                         ) 
                         , onPressed: ()
                         {
                            signUp(emailEdititngController.text, passwordEdititngController.text);
              
                         },
                          style: ElevatedButton.styleFrom(fixedSize: Size(100,100),
                          primary: Colors.white,onPrimary: Colors.black,
                           shape: CircleBorder()))





                     /* Text('Blood Bank Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40)
                      ,),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container( 
                          child: 
                    TextFormField( 
                        
                        style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                            
                            filled: true,
                            hintText: 'Name Of Blood Bank', 
                            
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Colors.white
                            ),textAlign: TextAlign.center,
                            
                            ),
                        ),
                      )
                      ,
                      
                      
                       Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container( 
                          child: TextFormField( style: TextStyle(color: Colors.black),
                            decoration: InputDecoration( border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                            contentPadding: EdgeInsets.symmetric(vertical: 40),
                            filled: true,
                            hintText: 'Address',
                            
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Colors.white
                            ),textAlign: TextAlign.center,
                            
                            ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container( 
                          child: TextFormField( style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(prefixIcon: Icon (Icons.email, ),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                            filled: true,
                            hintText: 'Email id',
                            
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Colors.white
                            ),
                            textAlign: TextAlign.center
                            
                            ),
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Container( 
                          child: TextFormField( 
                            obscureText: _isObscure,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                          hintText: 'Password',
                          
                          suffixIcon: IconButton(
                              icon: Icon(
                                  _isObscure ? Icons.visibility_off : Icons.visibility),
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                
                                }
                                );
                              }
                      
                              ),
                              
                              border:OutlineInputBorder(borderRadius: BorderRadius.circular(15)
                            ), 
                            
                              filled: true,
                              fillColor: Colors.white
                              ),
                              textAlign: TextAlign.center 
                              ,
                              
                             /*obscureText: _isObscure, style: TextStyle(color: Colors.black),
                            decoration: InputDecoration(suffixIcon:),
                            border:  OutlineInputBorder(borderRadius: BorderRadius.circular(15)
                            ),
                            filled: true,
                            hintText: 'Password',
                            
                            hintStyle: TextStyle(color: Colors.grey),
                            fillColor: Colors.white
                            ),textAlign: TextAlign.center,
                          */
                            
                            ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      
                       ElevatedButton(
                         child:const Text('Sign Up',style: TextStyle(fontSize: 18),
                         ) 
                         , onPressed: ()
                         {
                            
              
                         },
                          style: ElevatedButton.styleFrom(fixedSize: Size(100,100),
                          primary: Colors.white,onPrimary: Colors.black,
                           shape: CircleBorder()))*/
                   ]
                ),
              ),
            ),
          ),
        ),
      ),
    );
    
  }

  void signUp(String email,String password) async
  {
    if(_formKey.currentState!.validate())
    {
     await _auth.createUserWithEmailAndPassword(email: email, password: password)
     .then((value)=>
     {
      postDetailsToFirestore()
     }).catchError((e)
     {
      Fluttertoast.showToast(msg: e.message);
     });
     }
     
  }
  postDetailsToFirestore()async
  {
FirebaseFirestore firebaseFirestore=FirebaseFirestore.instance;
User? user= _auth.currentUser;
   userblood Userblood=userblood();


    Userblood.email = user!.email;
    Userblood.uid = user.uid;
    Userblood.nameofbloodbank=nameofbloodbankEdititngController.text;
    Userblood.address = addressEditingController.text;
    Userblood.email=emailEdititngController.text;
    await firebaseFirestore
    .collection("BLOODBANK")
    .doc(user.uid)
    .set(Userblood.toMap());
    Fluttertoast.showToast(msg: "Account created successfully :) ");Navigator.pushAndRemoveUntil(
        (context),
        MaterialPageRoute(builder: (context) => account()),
        (route) => false);

     
 
  }
  
  }
    
  

    

