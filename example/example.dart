import 'package:carded/carded.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 10,
          ),
          child: const CardyContainer(
            blurRadius: 10,
            padding: EdgeInsets.all(10),
            child: Text(
              'This is a container with shadows on all four edges',
              style: TextStyle(
                fontSize: 18,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
