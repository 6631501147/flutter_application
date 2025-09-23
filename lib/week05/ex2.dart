import 'package:flutter/material.dart';


void main() {
 runApp(
   const MaterialApp(home: ContainerDemo(), debugShowCheckedModeBanner: false),
 );
}


class ContainerDemo extends StatelessWidget {
 const ContainerDemo({super.key});


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: const Text('Demo')),
     body: Container(
       alignment: Alignment.topCenter,
       margin: const EdgeInsets.all(20),
      
       color: Colors.blue,
       width: 100.0,
       height: 100.0,
        child: const Align(
          alignment: Alignment(0.5,1),
          child: Text("Hello"),
        ),
     ),
   );
 }
}

