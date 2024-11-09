import 'package:flutter/material.dart';

class DataProvider extends ChangeNotifier{
  double _redValue = 0.0;
  double _greenValue = 0.0;
  double _blueValue = 0.0;

  double get redValue => _redValue;
  set redValue(value){
    _redValue = value;
    notifyListeners();
  }

  double get blueValue => _blueValue;
  set blueValue(value){
    _blueValue = value;
    notifyListeners();
  }

  double get greenValue => _greenValue;
  set greenValue(value){
    _greenValue = value;
    notifyListeners();
  }
}