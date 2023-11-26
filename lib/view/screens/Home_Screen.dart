import 'package:flutter/material.dart';
import 'package:flutter_match_app/models/provider/IndexProvider.dart';
import 'package:flutter_match_app/view/screens/FixtureScreen.dart';
import 'package:flutter_match_app/view/screens/MainScreen.dart';
import 'package:flutter_match_app/view/screens/ProfileScreen.dart';
import 'package:provider/provider.dart';
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  int selectedIndex = 0;
  List<Widget> widgetOptions = <Widget>[
    MainScreen(),
    FixtureScreen(),
    ProfileScreen(),
  ];

  

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey,
        body: 
        Consumer<IndexProvider>(
          builder: ((context, Provider, child) {
            return widgetOptions[selectedIndex];
          })),
       
        bottomNavigationBar:
         Consumer<IndexProvider>(
           builder:(context, Provider, child) {
             return BottomNavigationBar(
              backgroundColor: Colors.grey[800],
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.calendar_today),
                  label: 'Fixtures',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
              
              currentIndex:Provider.selectindex,
              selectedItemColor: Colors.amber,
              onTap: (index) {
                Provider.IncrementIndex(index);
              },
            );
           }, 
         ),
      );
}
