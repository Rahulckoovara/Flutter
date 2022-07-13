
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Raise_request_screen extends StatefulWidget {
  const Raise_request_screen({ Key? key }) : super(key: key);

  @override
  State<Raise_request_screen> createState() => _Raise_request_screenState();
}

class _Raise_request_screenState extends State<Raise_request_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 45,
        flexibleSpace: Container(
          decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topRight,end: Alignment.bottomLeft,
                colors: [
                  Colors.red,Colors.blue
                ]
                )),
        ),
      ),
  body: SafeArea(
          
        child: Container(
          decoration: BoxDecoration(
                gradient: LinearGradient(begin: Alignment.topRight,end: Alignment.bottomLeft,
                colors: [
                  Colors.red,Colors.blue
                ]
                )),
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'Raise Request',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                 Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        hintText: 'Patient Name',
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                        filled: true,
                        fillColor: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    
                    keyboardType: TextInputType.multiline,
                    maxLines:null,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.local_hospital),
                        hintText: '           Hospital Address',
                        contentPadding: EdgeInsets.symmetric(vertical: 35),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                        filled: true,
                        fillColor: Colors.white),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IntlPhoneField(
                       initialCountryCode: 'IN',
                      controller: TextEditingController(),
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      decoration: InputDecoration(
                       
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                        hintText: ' Phone Number',
                        fillColor: Colors.white,
                        filled: true,
                      ),
                    )),
                
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Request',
                        style: TextStyle(fontSize: 18,),
                      ),
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(800, 60),
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    )),
                ),
                
              ]),
            )),
      )
    );
  }
}