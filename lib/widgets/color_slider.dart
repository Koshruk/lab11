import 'package:flutter/material.dart';
import 'package:lab11/providers/data_provider.dart';
import 'package:provider/provider.dart';

enum ColorType{red, green, blue}

class ColorSlider extends StatefulWidget {
  const ColorSlider({super.key, required this.colorType});

  final ColorType colorType;

  @override
  State<ColorSlider> createState() => _ColorSliderState();
}

class _ColorSliderState extends State<ColorSlider> {

  late double Function() getColor;
  late void Function(double) setColor;

  late ColorType colorType;
  late ValueChanged<double> function;
  late String title;

  @override
  void initState() {
    final provider = Provider.of<DataProvider>(context, listen: false);
    super.initState();
    colorType = widget.colorType;
    switch(colorType){
      case ColorType.red:
        getColor = () => provider.redValue;
        setColor = (value) => provider.redValue = value;
        title = "R: ";
        break;
      case ColorType.green:
        getColor = () => provider.greenValue;
        setColor = (value) => provider.greenValue = value;
        title = "G: ";
        break;
      case ColorType.blue:
        getColor = () => provider.blueValue;
        setColor = (value) => provider.blueValue = value;
        title = "B: ";
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 20),
            ),
            Text(
              getColor().toStringAsFixed(0),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ],
        ),
        Slider(
          value: getColor().toDouble(),
          min: 0,
          max: 255,
          onChanged: (value){
            setState(() {
              setColor(value);
            });
          }
        ),
      ],
    );
  }
}
