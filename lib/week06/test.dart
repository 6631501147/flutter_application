import 'package:flutter/material.dart';


class RowDemo extends StatelessWidget {
  const RowDemo({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Row Demo'),
        ),
         body: Row(          
          children: <Widget>[
            Container(
              color: Colors.green,
              width: 100,
            ),
            Container(
              color: Colors.yellow,
              width: 100,
            ),
            Container(
              color: Colors.red,
              width: 100,
            ),
          ],
        ),

        ),
      );
   
  }
}
