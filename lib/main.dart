import 'package:flutter/material.dart';
import 'package:cv/pages/home.dart';
import 'package:cv/pages/cv.dart';

void main() => runApp(MaterialApp(
    routes: {
      '/': (context) => Home(),
      '/cv': (context) => CV(),
    },
));
