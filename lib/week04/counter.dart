import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}
class _CounterState extends State<Counter>{
  //state variable
  int count=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(title: Text('Counter App',style:TextStyle(color: Colors.white),),
    backgroundColor:Color.fromARGB(255, 217, 0, 255),
    ),
    body: Center(
      child: Text(
        'Counter = $count', 
    style: TextStyle(fontSize: 24, color: Colors.blue[700]),
    ),
    ),
    floatingActionButton: FloatingActionButton(onPressed:(){
      //print('test');
     // debugPrint('test');
      setState(() {
       count++;
      });
    },
    backgroundColor: Colors.blue,
    child: Icon(Icons.add,color: Colors.white),
    ),
  );
  }
}