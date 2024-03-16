import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:qrapplication/login.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
class Cam extends StatefulWidget {
  const Cam({super.key});

  @override
  State<Cam> createState() => _CamState();
}

class _CamState extends State<Cam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: MobileScanner(
      onDetect: (capture) {
        final List<Barcode> barcodes = capture.barcodes;
        final Uint8List? image = capture.image;
        for (final barcode in barcodes) {
          debugPrint('Barcode found! ${barcode.rawValue}');
        }
      },
    ),

    );
  }
}
