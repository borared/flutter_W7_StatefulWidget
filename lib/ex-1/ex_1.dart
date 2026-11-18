import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Custom buttons")),
        body: Center(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: 20,
              children: [
                ButtonSelected(),
                ButtonSelected(),
                ButtonSelected(),
                ButtonSelected(),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class ButtonSelected extends StatefulWidget {
  const ButtonSelected({super.key});

  @override
  State<ButtonSelected> createState() => _ButtonSelectedState();
}

class _ButtonSelectedState extends State<ButtonSelected> {
  bool isSelected = false;
  String get text => isSelected ? 'Selected' : 'Not Selected';

  Color get buttonColor => isSelected ? Colors.blue[500]! : Colors.blue[50]!;

  Color get textColor => isSelected ? Colors.white : Colors.black;

  void toggleButtonSelection() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        onPressed: toggleButtonSelection,
        style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: textColor,
        ),
        child: Text(text, style: TextStyle(fontSize: 26)),
      ),
    );
  }
}
