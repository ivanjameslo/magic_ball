// the naming convention in dart is snake_case (for files)
// all words are in lowercase and separated by underscores
// classes = PascalCase
// variables = camelCase

import 'package:flutter/material.dart';
import 'package:magic_ball/styled_text.dart';


class GradientContainer extends StatelessWidget {
  
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.teal,
                Colors.teal.shade800,
                const Color.fromARGB(255, 44, 130, 173),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: StyledText()
          ),
        );
  }
  
}