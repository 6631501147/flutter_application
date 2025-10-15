import 'package:flutter/material.dart';

class SwitchCheck extends StatefulWidget {
  const SwitchCheck({super.key});

  @override
  State<SwitchCheck> createState() => _SwitchCheckState();
}

class _SwitchCheckState extends State<SwitchCheck>{
  bool cb=false, sw=false;

  void toggleCheckbox(bool? status){
    setState((){
    cb=status!;
    }
    );
  }

  void toggleSwitch(bool? status){
    setState((){
     sw=status!;
    });
  }



  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
    title: const Text('Checkbox & Switch'),
    ),
    body: Column (
      children:[
        Row(
          children:[
            Checkbox(
             value: cb,
              onChanged: toggleCheckbox,
            ),
            Text('Checkbox: $cb'),
          ],
        ),
        Row(
          children:[
            Switch(
              value: sw,
              onChanged: toggleSwitch,
            ),
            Text('Switch: $sw'),
          ],
        ),
      ],
    ),
    );
  }
}