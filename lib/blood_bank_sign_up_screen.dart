import 'package:flutter/material.dart';

class Bloodbank_signup_screen extends StatefulWidget {
  const Bloodbank_signup_screen({ Key? key }) : super(key: key);

  @override
  State<Bloodbank_signup_screen> createState() => _Bloodbank_signup_screenState();
}

class _Bloodbank_signup_screenState extends State<Bloodbank_signup_screen> {
   bool _isObscure=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topRight,end: Alignment.bottomLeft,
                colors: [
                  Colors.red,Colors.blue
                ]
                )),
        ),
        toolbarHeight: 45,
      ),
       resizeToAvoidBottomInset:true , 
       
      
      body: SafeArea(child: 
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topRight,end: Alignment.bottomLeft,
                colors: [
                  Colors.red,Colors.blue
                ]
                )),
          child: Column(
             children: [
                SizedBox(height: 60,),
                Text('Blood Bank Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40)
                ,),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container( 
                    child: TextFormField( style: TextStyle(color: Colors.black),
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
                    child: TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLines:null,
                       style: TextStyle(color: Colors.black),
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
                   child:const Text('Sign Up',style: TextStyle(fontSize: 18),), onPressed: (){},
                    style: ElevatedButton.styleFrom(fixedSize: Size(100,100),
                    primary: Colors.white,onPrimary: Colors.black,
                     shape: CircleBorder()))
             ]
          ),
        ),
      )),
    );
    
  }
}
