import 'package:flutter/material.dart';

class SliderExample extends StatelessWidget {
  double currentSliderValue = 20;
  var fun;


  SliderExample(this.currentSliderValue, this.fun);



  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "${currentSliderValue}",
          style: TextStyle(fontSize: 15),
        ),
        SizedBox(
          width: 250,
          child: Slider(
            value: currentSliderValue,
            min: 8,
            max: 20,
            divisions: 12,
            label: currentSliderValue.round().toString(),
            onChanged: fun,
          ),
        ),
      ],
    );
  }
}
