import 'package:flutter/material.dart';

class LoginApp extends StatefulWidget{
  const LoginApp({super.key});

  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp>{
final TextEditingController tcUsername = TextEditingController();
final TextEditingController tcPassword = TextEditingController();
String message = "";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.blue,
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: tcUsername,
              decoration: const InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height:10),
            TextField(
              controller: tcPassword,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height:20),
             ElevatedButton(
              onPressed:(){
                setState((){
                  if(tcUsername.text == "admin" && tcPassword.text == "1234"){
                    message="Welcome admin";
                  }else{
                    message="wrong username or password";
                  }
                });
              },
              child: const Text("Login"),
             ),
             const SizedBox(height: 20),
              Text(
                message,
                style: const TextStyle(color: Colors.red, fontSize: 18),
              )
            
          ],

        ),
      ),
    );
  }
}