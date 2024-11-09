import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/data_provider.dart';
import 'color_slider.dart';
import 'changing_container.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _dataProvider = DataProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 30),
        child: ChangeNotifierProvider.value(
          value: _dataProvider,
        child: Column(
          children: [
            ChangingContainer(),
            ColorSlider(colorType: ColorType.red,),
            ColorSlider(colorType: ColorType.green,),
            ColorSlider(colorType: ColorType.blue,),
            const SizedBox(height: 20),
          ],
        ),
    ),
      ),
    );
  }
}
