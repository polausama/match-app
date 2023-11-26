import 'package:flutter/material.dart';
import 'package:flutter_match_app/constrains.dart';
import 'package:flutter_match_app/view/screens/Home_Screen.dart';
import 'package:flutter_match_app/view/screens/Login.dart';
import 'package:flutter_match_app/view/screens/MainScreen.dart';
import 'package:flutter_match_app/view/screens/splash_screen.dart';

class AppRouter{

  static Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/': return MaterialPageRoute(builder: (context) => SplashScreen());
      case loginScreenPath: return MaterialPageRoute(builder: (context) => LoginScreen());
      case homeScreenPath: return MaterialPageRoute(builder: (context) => HomeScreen());
     
      
    }
  }
}