import 'package:citcom_ui/screens/authentication/forgetpassword.dart';
import 'package:citcom_ui/screens/authentication/newpassword.dart';
import 'package:citcom_ui/screens/authentication/signin.dart';
import 'package:citcom_ui/screens/authentication/verification.dart';
import 'package:citcom_ui/screens/homepage.dart';
import 'package:citcom_ui/screens/opps404.dart';
import 'package:citcom_ui/screens/page404.dart';
import 'package:citcom_ui/screens/splash.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
