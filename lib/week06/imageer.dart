import 'package:flutter/material.dart';

class ImageDemo extends StatelessWidget{
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Image Demo')),
      body: Container(
           color: Colors.yellow,
          child: Image.asset('assets/images/sky.jpg',
          height: 100,
          width: 200,
          fit:BoxFit.contain,

               
          ),
        
          
         
        
      ),
      );
   
    
  }
}