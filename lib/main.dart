import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/conversion_layout.dart';

void main() => runApp(const TempAppWrapper());

class TempAppWrapper extends StatelessWidget {
  const TempAppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue[900]!),
        scaffoldBackgroundColor: Colors.blue[50],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue[900],
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        inputDecorationTheme: const InputDecorationTheme(
          border: OutlineInputBorder(),
          fillColor: Colors.white,
          filled: true,
        ),
      ),
      home: const ConversionLayout(),
    );
  }
}
