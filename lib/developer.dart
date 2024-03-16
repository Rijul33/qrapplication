import 'package:flutter/material.dart';

void main(){
  runApp(developer());
}
class developer extends StatefulWidget {
  const developer({super.key});

  @override
  State<developer> createState() => _developerState();
}

class _developerState extends State<developer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/image/person_fae.jpg'),

              ),
              SizedBox(height: 10,),
              Text(
                'JOHN',
                style: TextStyle(
                  fontSize: 30,
                  color:Colors.white,

                ),
              ),
              SizedBox(height: 5.0,),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 18,
                  color:Colors.white,
                ),
              ),
              SizedBox(height: 20,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'enter your phone',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
              ),
              ),
              SizedBox(height: 10,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'enter your email',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              ),
            ],
          ),
        )
      ),
    );
  }
}
