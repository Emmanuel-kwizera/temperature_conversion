import 'package:flutter/material.dart';

class TemperatureInput extends StatelessWidget {
  final TextEditingController controller;

  const TemperatureInput({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      decoration: const InputDecoration(
        labelText: 'Enter Temperature',
        prefixIcon: Icon(Icons.thermostat_outlined),
      ),
    );
  }
}
