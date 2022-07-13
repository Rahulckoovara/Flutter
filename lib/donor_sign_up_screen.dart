import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
//import 'package:intl/intl.dart';

class Donor_signup_screen extends StatefulWidget {
  const Donor_signup_screen({ Key? key }) : super(key: key);

  @override
  State<Donor_signup_screen> createState() => _Donor_signup_screenState();
} 


class _Donor_signup_screenState extends State<Donor_signup_screen> {
  bool _isObscure=true;
   DateTime _date= DateTime(2100);
  @override
  Widget build(BuildContext context) { //git init git add . git commit -m "fifth commit"   git config --global user.name "Rahulckoovara"   git remote add origin https://github.com/athulll7/EBloodBank.git
    return Scaffold(   
      resizeToAvoidBottomInset: true,               //git push origin
      backgroundColor: Colors.red,
      body: SafeArea(
        child: 
      Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
            
              SizedBox(height: 50),
              Text('Donor Sign Up',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40)
              ,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container( 
                  child: TextFormField( style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    
                    filled: true,
                    hintText: 'Name',
                    
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white
                    ),
                  
                    textAlign: TextAlign.center,
                    
                    ),
                ),
              ),
        
              
               Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container( 
                  child: TextFormField( style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
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
                  child: TextFormField(
                   
                   
                     style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.calendar_today_rounded),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    filled: true,
                  hintText: 'Last Donated',
                    
                    hintStyle: TextStyle(color: Colors.grey),
                    fillColor: Colors.white
                    ),textAlign: TextAlign.center,
                   /* onTap: () async{
                      
                      final _date =await
         showDatePicker(
       context: context,
       initialDate: new DateTime.now(),
       firstDate: new DateTime(2000),
       lastDate: new DateTime(2100));
   if (_date != null)
     setState(() {
       _date.toString();
       
     }
     );

      _date= _newDate;
       //date.text = DateFormat.('yyyy-mm-dd')
       }
     );*/
                    
)               
                    ),
  
                ),
              
               Padding(
                padding: const EdgeInsets.all(15.0),
                child: IntlPhoneField(
                      controller: TextEditingController(),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      decoration: InputDecoration(
                        
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: 'Phone Number',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                      initialCountryCode: 'IN',
                     textAlign: TextAlign.center,
                    ),
                    ),

                /*Container( 
                  child: CountryCodePicker
                  (
                    initialSelection: 'IN',
                    child: TextFormField(
                      
                      
                       style: TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.phone),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                      filled: true,
                      hintText: 'Mobile Number',
                      
                      hintStyle: TextStyle(color: Colors.grey),
                      fillColor: Colors.white
                      ),
                     
                       keyboardType: TextInputType.number
                      ,
                     
                     inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      textAlign: TextAlign.center,
                      
                      ),
                  ),
                ),*/
            
              


               Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  
                  child: TextFormField(obscureText: _isObscure,
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
                      
                    
                    ),
                ),
              ),
              ElevatedButton(
                 child:const Text('Sign Up',style: TextStyle(fontSize: 18),), onPressed: (){},
                  style: ElevatedButton.styleFrom(fixedSize: Size(100,100),
                  primary: Colors.white,onPrimary: Colors.black,
                   shape: CircleBorder()))
            ],
          ),
        ),
      )
      ),
    );
    
  }
}
    
  
