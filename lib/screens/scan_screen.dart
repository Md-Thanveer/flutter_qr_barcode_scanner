import 'package:flutter/material.dart';
import 'package:flutter_qr_barcode_scanner/qr_barcode_scanner.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});

  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String scannedData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scanner')),
      body: Column(
        children: [
          Expanded(
            child: QRBarcodeScanner(
              onScan: (data) {
                setState(() {
                  scannedData = data;
                });
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(data: scannedData),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
