import'package:flutter/material.dart';
import 'package:cv/pages/home.dart';
import 'package:cv/pages/cv.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MaterialApp(

    routes: {
      '/': (context) => Home(),
      '/cv': (context) => CV(),
    },
));
