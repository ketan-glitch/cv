import 'package:cv/pages/hobbies.dart';
import 'package:cv/pages/projects.dart';
import 'package:cv/pages/resume.dart';
import'package:flutter/material.dart';
import 'package:cv/pages/home.dart';
import 'package:cv/pages/cv.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  // initialRoute: '/',
  routes: {
    '/' : (context) => Home(),
    '/resume' : (context) => Resume(),
    '/projects' : (context) => Projects(),
    '/hobbies' : (context) => Hobbies(),
  },

  theme: ThemeData(

  ),

));
