import 'package:flutter/material.dart';
class SingleChild extends StatelessWidget {
  const SingleChild({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
      child: Container(
        width: 200,
        height: 200,
        color: Colors.yellow,
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(8),
        alignment: Alignment(-0.5,1),
        child: Icon(Icons.heart_broken, size: 32, color: Colors.red,),
      ),
    ),
    );
  }
}
