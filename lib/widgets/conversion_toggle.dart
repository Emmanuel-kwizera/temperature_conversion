import 'package:flutter/material.dart';

class ConversionToggle extends StatelessWidget {
  final bool convertToCelsius;
  final ValueChanged<bool> onChanged;
  final bool isPortrait;

  const ConversionToggle({
    super.key,
    required this.convertToCelsius,
    required this.onChanged,
    required this.isPortrait,
  });

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: isPortrait ? Axis.vertical : Axis.horizontal,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio<bool>(
              activeColor: Colors.blue[900],
              value: true,
              groupValue: convertToCelsius,
              onChanged: (value) => onChanged(value!),
            ),
            const Text('Fahrenheit to Celsius'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Radio<bool>(
              activeColor: Colors.blue[900],
              value: false,
              groupValue: convertToCelsius,
              onChanged: (value) => onChanged(value!),
            ),
            const Text('Celsius to Fahrenheit'),
          ],
        ),
      ],
    );
  }
}
