
# Temperature Conversion App

A simple and responsive Flutter app that converts temperatures between Fahrenheit and Celsius. The app demonstrates clean UI architecture using custom widgets, state management with `StatefulWidget`, and animation integration with `AnimationController`.

---

## Features

* Convert between Fahrenheit and Celsius
* User input with validation
* Conversion history log
* Responsive design for both portrait and landscape orientations
* Smooth animation on result display using `ScaleTransition`
* Clean architecture using modular, reusable widgets

---

## Project Structure

```
lib/
│
├── main.dart                # App entry point
├── logic/
│   └── conversion_logic.dart  # Contains the temperature conversion function
├── screens/
│   └── conversion_layout.dart # Main UI layout (stateful)
└── widgets/
    ├── conversion_toggle.dart    # Radio button group for unit selection
    ├── temperature_input.dart    # Input field widget
    ├── convert_button.dart       # Conversion button
    ├── animated_result.dart      # Animated result display
    └── history_list.dart         # List of past conversions
```

---

## Getting Started

### Prerequisites

* Flutter SDK installed: [https://flutter.dev/docs/get-started/install](https://flutter.dev/docs/get-started/install)
* A device emulator or physical device

### Run the App

```bash
flutter pub get
flutter run
```

---

## Widget Breakdown

| Widget                  | Type            | Description                                                |
| ----------------------- | --------------- | ---------------------------------------------------------- |
| `ConversionLayout`      | StatefulWidget  | Main screen that manages user input, output, and animation |
| `ConversionToggle`      | StatelessWidget | Handles the unit toggle (F ⇌ C)                            |
| `TemperatureInputField` | StatelessWidget | Text field for temperature input                           |
| `ConvertButton`         | StatelessWidget | Button to trigger conversion                               |
| `AnimatedResult`        | StatelessWidget | Shows animated result using `ScaleTransition`              |
| `HistoryList`           | StatelessWidget | Displays conversion history                                |

---

## Logic: Conversion Formula

The conversion logic is isolated in `logic/conversion_logic.dart`:

```dart
double result = convertToCelsius ? (input - 32) * 5 / 9 : (input * 9 / 5) + 32;
```

---

## Learning Objectives Addressed

* Use of `StatefulWidget` for state management
* Separation of UI into multiple reusable `StatelessWidgets`
* Orientation-aware layout using `OrientationBuilder`
* Basic animation implementation with `AnimationController`
* Input validation using `TextEditingController`
* Clean, modular project structure

---

## Author

Emmanuel Kwizera
GitHub: [@Emmanuel-kwizera](https://github.com/Emmanuel-kwizera)

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

