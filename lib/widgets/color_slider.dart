import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lab11/providers/data_provider.dart';
import 'package:provider/provider.dart';

class ColorSlider extends StatefulWidget{
  const ColorSlider({super.key});


  @override
  State<ColorSlider> createState() => _ColorSliderState();
}

class _ColorSliderState extends State<ColorSlider>{

  double _red = 0.0;

  @override
  Widget build(BuildContext context){
    final provider = Provider.of<DataProvider>(context);
    return Slider(
        value: _red,
        onChanged: (double value){
          provider.data = value;
        },
    );
  }
}
