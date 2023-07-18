import 'package:flutter/material.dart';
import 'package:untitled1/gradient_container.dart';

void main(){
  runApp(const MaterialApp(
    home: Scaffold(
      body: GradientContainer(
          Colors.deepPurple,  //calling both the colours
          Colors.purple),
      ),
    ),
  );
}


