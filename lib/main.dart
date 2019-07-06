/*
  package: we are importing code from a third party package not a std dart lib
  flutter: The name of the package we are importing
  material.dart: The file we are importing from that package. 
*/
import 'package:flutter/material.dart';

void main() {
  var app = MaterialApp(
    home: Text('Hello World!'),
  );

  runApp(app);
}
