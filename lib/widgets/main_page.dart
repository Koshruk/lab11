import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/data_provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final _dataProvider = DataProvider();

  double _width = 200.0;
  double _height = 200.0;
  double _radius = 20.0;

  void _onWidthChange(double value) {
    setState(() {
      _width = value;
    });
  }
  void _onHeightChange(double value) {
    setState(() {
      _height = value;
    });
  }
  void _onRadiusChange(double value) {
    setState(() {
      _radius = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ChangeNotifierProvider.value(
          value: _dataProvider,
        child: Column(
          children: [
            Row(
              children: [
                const Text("Width: ", style: TextStyle(fontSize: 20),),
                Text(_width.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ],
            ),
            Slider(value: _width, min: 10, max: 200, onChanged: _onWidthChange),
            Row(
              children: [
                const Text("Height: ", style: TextStyle(fontSize: 20),),
                Text(_height.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ],
            ),
            Slider(value: _height, min: 10, max: 200, onChanged: _onHeightChange),
            Row(
              children: [
                const Text("Radius: ", style: TextStyle(fontSize: 20),),
                Text(_radius.toStringAsFixed(2), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ],
            ),
            Slider(value: _radius, min: 0, max: 200, onChanged: _onRadiusChange),
            const SizedBox(height: 20),
            /*_changingContainer(_width, _height, _radius)*/
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30)
                ),
              ),
            ),
          ],
        ),
    ),
      ),
    );
  }

  Widget _changingContainer(double width, double height, double radius){
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(radius)
        ),
      ),
    );
  }


}
