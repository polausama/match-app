import 'package:flutter/material.dart';

class IndexProvider extends ChangeNotifier {
  int selectindex = 0;
  void IncrementIndex(int index){
    selectindex = index;
    notifyListeners();
  }
  
}