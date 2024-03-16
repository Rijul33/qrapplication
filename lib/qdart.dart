import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrapplication/camera.dart';
class Qr extends StatefulWidget {
  const Qr({super.key});

  @override
  State<Qr> createState() => _QrState();
}

class _QrState extends State<Qr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Column(
        children: [Icon(Icons.account_circle_rounded,size:100,),
          SizedBox(height:200,
          ),
          QrImageView(
            data: '1234567890',
            version: QrVersions.auto,
            size: 200.0,
          ),
          SizedBox(height: 50,),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Cam()
              ,)
            );

          }, child:
          Text('Scan',style: TextStyle(color: Colors.black),
          ),
            style: TextButton.styleFrom(backgroundColor: Colors.white),
          ),
        ],
      ),

    ),
    backgroundColor: Colors.blue,);
  }
}
