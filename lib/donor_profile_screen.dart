import 'package:flutter/material.dart';

import 'package:ebloodbank/donor_login_screen.dart';


class Donor_profile_screen extends StatefulWidget {
   Donor_profile_screen ({ Key? key }) : super(key: key);

  @override
  TextEditingController _date = TextEditingController();
  State<Donor_profile_screen> createState() => _Donor_profile_screenState();
}

class _Donor_profile_screenState extends State<Donor_profile_screen> {
  DateTime date=DateTime(2022,12,22);
  
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
        ), backgroundColor: Colors.red,
        actions: <Widget>[
    IconButton(
      icon: Icon(
        Icons.logout,
        color: Colors.white,
      ),
      onPressed: () {
         Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Donor_login_screen()));
      },
    )
  ],
      ),
  body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(40),
        child: Container(
            width: double.infinity,
            height: double.infinity,
            child: SingleChildScrollView(
              child: Column(children: [
               Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    'Donor Profile',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),const Image(
                image: AssetImage('assets/donorlogo.png'),
                height: 150,
               ),
               
                 Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Manu S Kumar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                     const Text(
                            'Address :',
                            style: TextStyle(fontSize: 17),
                          ), 
                          SizedBox(width: 10),
                          Text(
                            'Povval,Kasaragod',
                            style: TextStyle(fontSize: 22),
                          ),
                          
                          ],
                       ),
                ),
                     
               
               
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                     const Text(
                            'Phone No :',
                            style: TextStyle(fontSize: 17),
                          ), SizedBox(width: 10,),
                       
                          Text(
                            '964521179',
                            style: TextStyle(fontSize: 22),
                          ),
                  ],
                 ),
               ),
              

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                     const Text(
                            'Blood Group :',
                            style: TextStyle(fontSize: 17),
                          ), SizedBox(width: 10,),
                          Text(
                            'B+',
                            style: TextStyle(fontSize: 22),
                          ),
                  ],
                 ),
               ),
               
             
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                     const Text(
                            'Last Donated Date :',
                            style: TextStyle(fontSize: 17),
                          ), SizedBox(width: 10,),
                          Text(
                            '${date.year}/${date.month}/${date.day}',
                            style: TextStyle(fontSize: 22),
                          ),
                          
                          
                  ],
                 ),
               ),
               
              

              ElevatedButton(
                child: Text('Change date'),
                onPressed: () async{
                  DateTime? newDate = await showDatePicker(
                    context: context, initialDate: date, firstDate: DateTime(2010), lastDate: DateTime(2100)
                    );
                    if(newDate == null) return;
                    setState(() => date =newDate );
                } 
                ),
                 Padding(
                   padding:  EdgeInsets.fromLTRB(30.0, 130.0, 30, 10.0),
                   child: SizedBox(height: 50,width: 250,
                     child: ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.red),
                                   child: Text('Save', style: TextStyle(fontSize: 20),),
                                   onPressed: () {
                      } 
                                   ),
                   ),
                 ),
                
                
              ]),
            )),
      ))
    );
  }
}