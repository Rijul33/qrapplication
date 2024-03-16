import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qrapplication/qdart.dart';
import 'package:qrapplication/developer.dart';
import 'package:http/http.dart'as http;

class RegApp extends StatefulWidget {
  const RegApp({Key? key}) : super(key: key);

  @override
  State<RegApp> createState() => _RegAppState();
}

class _RegAppState extends State<RegApp> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController regnoController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  void RegApp()async{
    Uri uri=Uri.parse('https://scnner-web.onrender.com/api/register');
    print(nameController.text);
    print(regnoController.text);
    print(emailController.text);
    print(passwordController.text);
    var response=await http.post(uri,
    headers:<String,String>{
      'Content-Type':'application/json;charset=UTF-8',
    },
    body:jsonEncode({
      "name":nameController.text,
      "regno":regnoController.text,
      "email":emailController.text,
      "password":passwordController.text,
    }));
    print(response.statusCode);
    print(response.body);
    if(response.statusCode==200) {


    }
    else{
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text('registration failed')));

    }
    }


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
              Text(
                'REGISTRATION',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
              SizedBox(
                width: 50,
                height: 30,
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'enter your name'),
                ),
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(
                  controller: regnoController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'enter your reg no'),
                ),
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'enter your email'),
                ),
              ),
              Container(
                width: 300,
                height: 80,
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      labelText: 'enter your password'),
                ),
              ),
              ElevatedButton(
                onPressed: () {RegApp();


                },
                child: Text('REGISTER'),
                style: TextButton.styleFrom(backgroundColor: Colors.blue),
              )
            ],
          ),
        ),
      ),
    );
  }
}
