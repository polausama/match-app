import 'package:flutter/material.dart';
import 'package:flutter_match_app/app_router.dart';
import 'package:flutter_match_app/local/sharedprefres.dart';
import 'package:flutter_match_app/models/provider/IndexProvider.dart';
import 'package:flutter_match_app/view/screens/Home_Screen.dart';
import 'package:flutter_match_app/view/screens/Login.dart';
import 'package:flutter_match_app/view/screens/splash_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
SharePref.init();
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => IndexProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       onGenerateRoute: AppRouter.generateRoute,
        
      ),
    );
  }
}