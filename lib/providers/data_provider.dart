import 'dart:ffi';

import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier{
  int _red = 0;
  int _green = 0;
  int _blue = 0;

  int get red => _red;
  set data(value){
    _red = value;
    notifyListeners();
  }

  int get green => _green;
  set green(value){
    _green = value;
    notifyListeners();
  }

  int get blue => _blue;
  set blue(value){
    _blue = value;
    notifyListeners();
  }
}