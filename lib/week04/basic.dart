import 'package:flutter/material.dart';

class Basic extends StatelessWidget{
  const Basic({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(title: Text('My App',style:TextStyle(color: Colors.white),),
    backgroundColor:Color.fromARGB(255, 217, 0, 255),
    ),
    body: Center(
      child: Text('Hello friends', 
    style: TextStyle(fontSize: 24, color: Colors.blue[700]),
    ),
    ),
    floatingActionButton: FloatingActionButton(onPressed: null,
    backgroundColor: Colors.blue,
    child: Icon(Icons.add,color: Colors.white),
    ),
  );
  }
}