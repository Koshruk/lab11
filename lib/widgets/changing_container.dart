import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lab11/providers/data_provider.dart';
import 'package:provider/provider.dart';

class ChangingContainer extends StatefulWidget{
  const ChangingContainer({super.key});


  @override
  State<ChangingContainer> createState() => _ChangingContainerState();
}

class _ChangingContainerState extends State<ChangingContainer>{
  @override
  Widget build(BuildContext context){
    final provider = Provider.of<DataProvider>(context);
    return Container(
      decoration: BoxDecoration(
        color: Color.fromRGBO(provider.red, provider.green, provider.blue, 1),
      ),
    );
  }
}
