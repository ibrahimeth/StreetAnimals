import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:streetanimals/pages/home_page.dart';
import 'package:streetanimals/pages/profile_page.dart';

class navbarProvider extends ChangeNotifier {
  int currentindex = 0 ;
  int ?current;
  Color currentColor = Colors.white ;
  void setcur(){
    current = currentindex;
    notifyListeners();
  }
  void setCurrentindex(int index) {
    currentindex = index ;
    notifyListeners();
  }
  Widget body() {
    switch (currentindex) {
      case 0 :
        return const MyHomePage();
      case 1:
        return const profilePage();
      default :
        return const MyHomePage();
    }
  }
}