import 'package:flutter/material.dart';

class DesignTwo extends StatelessWidget {
  const DesignTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        
        title: Text("My Profile", style:TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
       body: Padding(
         padding: const EdgeInsets.all(8.0),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[//"https://icons.iconarchive.com/icons/iconshock/super-heroes-sigma/128/Batman-icon.png"
         Center(
           child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.blue,
            backgroundImage: NetworkImage("https://icons.iconarchive.com/icons/iconshock/super-heroes-sigma/128/Batman-icon.png"),),
         ),
         Divider(color: Colors.grey[600],height: 40),
          Text("Name",style: TextStyle(color: Colors.grey)),
          Text('BatMan',style: TextStyle(color: Colors.yellow, fontSize: 20)),
            SizedBox(height: 16),
           Text('Age',style: TextStyle(color: Colors.grey)
           ),
            Text('23',style: TextStyle(color: Colors.yellow, fontSize: 20)),
             SizedBox(height: 16),
            Row(children:[Icon(Icons.email,color:Colors.grey),
             SizedBox(width: 8),
            Text('batman@gmail.com',
            
            style: TextStyle(color: Colors.yellow, fontSize: 16))]),
          ],
         
               ),
       ),
    );
  }
}