import 'package:flutter/material.dart';

class ResultDisplay extends StatelessWidget {
  final Animation<double> scaleAnimation;
  final String output;

  const ResultDisplay({
    super.key,
    required this.scaleAnimation,
    required this.output,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scaleAnimation,
      child: Text(
        'Result: $output',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.blue[800],
        ),
      ),
    );
  }
}
