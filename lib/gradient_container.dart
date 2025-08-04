// the naming convention in dart is snake_case (for files)
// all words are in lowercase and separated by underscores
// classes = PascalCase
// variables = camelCase

import 'package:flutter/material.dart';
import 'package:magic_ball/magic_ball_widget.dart';
// import 'package:magic_ball/styled_text.dart';

// dart is a type safe language, which means that 
// it will not allow you to set a value of the wrong type
// Type Inference
// - determines the data type based on the initial value
// if var alignmentTopLeft only, it will be of type dynamic

// Type annotation. We explicitly define the data type
const Alignment alignmentTopLeft = Alignment.topLeft;
const Alignment alignmentBottomRight = Alignment.bottomRight;

// Type Inference. Based on the initial value.
// var alignmentCenter = Alignment.center;
// var alignmentBottomRight = Alignment.bottomRight;

// Constant variable - once set, it cannot be changed or assigned later on
// const - the values are actually replaced during compile time
// const - the values should already be known like literals
// const topLeft = Alignment.topLeft;
// final - the value can be set at runtime, but once set, it cannot be changed
// final bottomRight = Alignment.bottomRight;

List<String> listOfWords = ["hello", "world"];
List<int> listOfNumbers = [1, 2, 3, 4, 5];
List<Widget> listOfWidgets = [
  const Text("Hello"),
  const Text("World"),
  const Icon(Icons.star),
];

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
            child: MagicBallWidget()
          ),
        );
  }
  
}