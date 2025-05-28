import 'package:flutter/material.dart';
import '../logic/conversion_logic.dart';
import '../widgets/conversion_toggle.dart';
import '../widgets/temperature_input.dart';
import '../widgets/convert_button.dart';
import '../widgets/result_display.dart';
import '../widgets/history_list.dart';

class ConversionLayout extends StatefulWidget {
  const ConversionLayout({super.key});

  @override
  State<ConversionLayout> createState() => _ConversionLayoutState();
}

class _ConversionLayoutState extends State<ConversionLayout>
    with SingleTickerProviderStateMixin {
  final TextEditingController _inputController = TextEditingController();
  bool _convertToCelsius = true;
  String _output = '';
  List<String> _log = [];
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _scaleAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  void _handleConversion() {
    final input = double.tryParse(_inputController.text);
    if (input == null) return;

    final result = convertTemperature(input, _convertToCelsius);
    setState(() {
      _output = result.output;
      _log.insert(0, result.description);
      _animationController.forward(from: 0);
    });
  }

  @override
  void dispose() {
    _inputController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Temperature Converter'), centerTitle: true),
      body: SafeArea(
        child: OrientationBuilder(builder: (context, orientation) {
          final isPortrait = orientation == Orientation.portrait;

          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ConversionToggle(
                  convertToCelsius: _convertToCelsius,
                  onChanged: (value) => setState(() => _convertToCelsius = value),
                  isPortrait: isPortrait,
                ),
                TemperatureInput(controller: _inputController),
                const SizedBox(height: 16),
                ConvertButton(onPressed: _handleConversion),
                const SizedBox(height: 16),
                ResultDisplay(scaleAnimation: _scaleAnimation, output: _output),
                const SizedBox(height: 16),
                Expanded(child: HistoryList(log: _log)),
              ],
            ),
          );
        }),
      ),
    );
  }
}
