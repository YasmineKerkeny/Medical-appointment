import 'package:flutter/material.dart';
//import 'package:project_medical/screens/welcome_screen.dart';
import 'package:project_medical/screens/welcome_screenn.dart';
//import 'package:firebase_core/firebase_core.dart';

void main() async {
 /* WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  ); */
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context ){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dForm()
      );
  }
}

