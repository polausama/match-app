import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_match_app/constrains.dart';
import 'package:flutter_match_app/local/sharedprefres.dart';
import 'package:flutter_match_app/main.dart';
import 'package:flutter_match_app/view/screens/Login.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void checkStartScreen()async{
    String? email = await SharePref.getEmail();
    if (email != null) {
      Navigator.pushNamed(context, homeScreenPath);
      
    }else{
      Navigator.pushNamed(context, loginScreenPath);
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SharePref.init();
    if(mounted){
      Timer(Duration(seconds: 3), () { 
      checkStartScreen();
    });
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network('https://lottie.host/07a2cc25-fab9-40e3-bef9-fcfadc0c8673/5TwZpzGPz0.json',

        width: 500,height: 500,fit: BoxFit.cover),
      ),
    );
  }
}