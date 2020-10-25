import 'package:flutter/material.dart';

class CV extends StatefulWidget {
  @override
  _CVState createState() => _CVState();
}

class _CVState extends State<CV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'Resume',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Text('CV Body'),
    );
  }
}

