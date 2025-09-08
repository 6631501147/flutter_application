import 'package:flutter/material.dart';
import 'dart:math';

class Number extends StatefulWidget{
  const Number({super.key});

  @override
  State<Number> createState() => _NumberState();
}
class _NumberState extends State<Number>{
  TextEditingController aController = TextEditingController();
  TextEditingController bController = TextEditingController();
  String result = "";


  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: const Text("Calculator"),
      backgroundColor: Colors.blue,
    shadowColor: Colors.white,
    ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: aController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Number1",
            ),

          ),
          const SizedBox(height: 10),
          TextField(
            controller: bController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Number2",
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: (){
              setState((){
               if(aController.text.isEmpty || bController.text.isEmpty){
                result = "Please input both numbers";
               }else{
                final a=double.tryParse(aController.text);
                final b=double.tryParse(bController.text);
                if(a == null || b == null){
                  result = "Invalid numbers";
                }else{
                  result = "Result: ${a + b}";
                }
               }
              });
            },
            child: const Text("Sum"),
          ),
          ElevatedButton(
            onPressed: (){
              setState((){
              if(aController.text.isEmpty || bController.text.isEmpty){
                result =" Please input both numbers";
              }else{
                final a=double.tryParse(aController.text);
                final b=double.tryParse(bController.text);
                if(a == null || b == null){
                  result = "Invalid numbers";
              }else{
                result = "Power: ${pow(a, b)}";
              }
              }
              });
            },
            child: const Text("Power"),
          ),
          ElevatedButton(
            onPressed:(){
              setState((){
               aController.clear();
                bController.clear();
                result = "";
              });
            },
            child: const Text("Clear"),
          ),
          const SizedBox(height: 20),
          Text(
            result,
            style: const TextStyle(color: Colors.red, fontSize: 18),
          )
        ],
      )
    )

    );
  }
}
