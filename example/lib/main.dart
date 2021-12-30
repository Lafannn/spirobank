import 'package:flutter/material.dart';
import 'package:spirobank/spirobank.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final spirobank = Spirobank();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            TextButton(
              child: Text('Start scan'),
              onPressed: () {
                spirobank.startScan();
              },
            ),
          ],
        ),
      ),
    );
  }
}
