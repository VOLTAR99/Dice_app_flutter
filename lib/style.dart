import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Style extends StatelessWidget{
  const Style(this.text,{super.key});

 final String text;

  @override
  Widget build(context){
    return Text(
      text,textAlign: TextAlign.center,          //Align the text in the center horizontally
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,

      ),
    );
  }
}