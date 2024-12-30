import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String data;

  const ResultScreen({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Result')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Scanned Data:', style: TextStyle(fontSize: 20)),
            Text(data, style: const TextStyle(fontSize: 18, color: Colors.blue)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Scan Again'),
            ),
          ],
        ),
      ),
    );
  }
}
