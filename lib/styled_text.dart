import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class StyledText extends StatelessWidget {

  final String text;

  const StyledText(this.text, {super.key});
  
  @override
  Widget build(BuildContext context) {
    return Text(
              text, 
              style: const TextStyle(
                color: Colors.white, 
                fontSize: 24
              )
            );
  }
}