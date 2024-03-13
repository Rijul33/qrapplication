import 'package:flutter/material.dart';
import 'package:qrapplication/qdart.dart';
import 'package:qrapplication/registration.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,

        body: Center(
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 200,
              ),
              Text('Login',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.red), ),
              SizedBox(
                width: 50,
                height: 30,
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'enter your username'
                ),

                ),
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                    ),
                    labelText: 'enter your password'
                ),

                ),
              ),
              ElevatedButton(onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> Qr() ) );
              }, child: Text('LOGIN'),
                style:TextButton.styleFrom(backgroundColor: Colors.blue) ,),
                  SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text('Do you have an account?'),
                  TextButton(onPressed:(){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> RegApp() ) );
                  }, child: Text('Registration'),
                    style:TextButton.styleFrom(backgroundColor: Colors.grey) ,),
                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}
