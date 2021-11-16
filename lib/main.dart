import 'package:flutter/material.dart';
import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(title: 'Local Shopper'),
      routes: {'/homePage': (context) => HomePage()},
    );
  }
}

class LoginScreen extends StatelessWidget {
  final String title;

  const LoginScreen({Key? key, required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          children: [
            Container(child: Text("Welcome",
            style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),), 
            padding: EdgeInsets.all(80),),

            Container(child: TextField(
              decoration: InputDecoration(hintText: 'username',border: OutlineInputBorder(),
              fillColor: Colors.white,filled: true)),
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              ),
            Container(child: TextField(
              decoration: InputDecoration(hintText: 'password',border: OutlineInputBorder(),
              fillColor: Colors.white,filled: true),
              obscureText: true,),
              padding: EdgeInsets.fromLTRB(20, 8, 20, 8)
              ),

            ElevatedButton(child: Text("Login"),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.indigo)), 
            onPressed: () {
              //navigate to home page
              Navigator.pushNamed(context, '/homePage');
            },),
            ElevatedButton(onPressed: (){}, child: Text('Sign Up'),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amber)),)//this isn't going to do anything
          ],
        ),),
    );
  }
  
}