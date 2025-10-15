import 'package:flutter/material.dart';

class Random extends StatefulWidget{
  const Random({super.key});

  @override
  State<Random> createState() => _RandomState();
}

class _RandomState extends State<Random>{
  int gValue=0;
  int gValue2=2;

  void changeValue(int? value){
    setState((){
      gValue=value!;
    });
  }
  void changeValue2(int? value){
    setState((){
      gValue2=value!;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
     appBar: AppBar(
      title: const Text('Radio Button'),
     ),
     body: Padding(
      padding:const EdgeInsets.only(right: 10),
      child: Column(
           children:[
            Row(children:[
            Radio(value:0,groupValue: gValue, onChanged: changeValue),
            const Text('0'),
            Radio(value:1,groupValue: gValue, onChanged: changeValue),
            const Text('1'),
            Radio(value:2,groupValue: gValue, onChanged: changeValue),
            const Text('2'),
            const Spacer(),
            Text('You choose $gValue'),

            ],
            ),
            Row(
            children:[
              Radio(value:0, groupValue: gValue2, onChanged: changeValue2),
              const Text('0'),
              Radio(value:1, groupValue: gValue2, onChanged: changeValue2),
              const Text('1'),
              Radio(value:2, groupValue: gValue2, onChanged: changeValue2),
              const Text('2'),
              const Spacer(),
              Text('You choose $gValue2'),
            ],
            ),
           ],
      ),
      
     ),
    );
  }

}