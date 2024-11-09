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
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        color: Color.fromRGBO(provider.redValue.round(), provider.greenValue.round(), provider.blueValue.round(), 1),
      ),
    );
  }
}
