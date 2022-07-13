import 'package:ebloodbank/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() async{
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
   options: FirebaseOptions(
      apiKey: "AIzaSyBc1fNz80WrXVuyfxpY_sWpPkr0-MpL0so", // Your apiKey
      appId: "com.example.ebloodbank", // Your appId
      messagingSenderId: "289917110523	", // Your messagingSenderId
      projectId: "bloodbank-91d98", // Your projectId
    ),
);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      
        home: SplashScreen(),
        theme:
            ThemeData(primaryColor: Colors.white, primarySwatch: Colors.blue,
            
            )            
            );
  }
}
