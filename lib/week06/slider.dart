import 'package:flutter/material.dart';
class SliderApp extends StatefulWidget {
  const SliderApp({super.key});

  @override
  State<SliderApp> createState() => _SliderAppState();
}

class _SliderAppState extends State<SliderApp>{
double sliderValue1=0.5, sliderValue2=20;

  @override
  Widget build(BuildContext context){
    return Scaffold(
    body: SafeArea(
     child: Column(
      children: [
        const Text('Default Slider'),
        Slider(
          value: sliderValue1,
          divisions: 10,
          label: sliderValue1.toString(),
          onChanged: (value){
            setState((){
              sliderValue1=value;
            });
          },
        ),
        const Text('Custom Slider'),
        Slider(
          value: sliderValue2,
          min: 0,
          max: 100,
          divisions: 5,
          label: sliderValue2.round().toString(),
          onChanged: (value){
            setState((){
              sliderValue2=value;
            }
            );
          }
        ),
      ],
     ),
    ),

    );
  }


}


