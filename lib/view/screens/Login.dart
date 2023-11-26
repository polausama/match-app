import 'package:flutter/material.dart';
import 'package:flutter_match_app/constrains.dart';
import 'package:flutter_match_app/local/sharedprefres.dart';
import 'package:flutter_match_app/view/widgets/Text_Form_Password.dart';
import 'package:flutter_match_app/view/widgets/Text_Form_UserName.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  String? username;
  String? password;
  bool color = true;
  var snackBar = SnackBar(
    backgroundColor: Colors.green,
    content: Text('Login Sucssfuel'),
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SharePref.init();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Form(
        key: key,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                  width: 300,
                  height: 300,
                  child: Lottie.network(
                    'https://lottie.host/8e7ad401-3328-48ff-a255-043f1bd63697/KE5YQBkJkZ.json',
                    fit: BoxFit.fill,
                  )),
            ),
            Custom_Text_Field(
              saved: (value) {
                username = value;
              },
              hintName: 'user name',
              labelName: 'enter your user name',
              icon: Icons.person,
            ),
            SizedBox(height: 15.0),
            Custom_TextField_password(
              saved: (value) {
                password = value;
              },
              hintName: 'password',
              labelName: 'enter your password',
              icon: Icons.lock,
            ),
            SizedBox(height: 30.0),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: color ? Colors.blue : Colors.red,
                  borderRadius: BorderRadius.circular(20.0)),
              child: TextButton(
                style: ButtonStyle(),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onPressed: () {
                 
                    bool validate = key.currentState!.validate();
                    if (validate == true) {
                      key.currentState!.save();
                      print('user name : ${username}');
                      print("password : ${password}");
                      SharePref.saveEmail(username!);
                      SharePref.savePassword(password!);
                      Navigator.pushNamed(context, homeScreenPath);
                      color = true;
                      key.currentState!.reset();
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else
                      color = false;
                
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
