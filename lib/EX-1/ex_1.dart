import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: const Text("Custom buttons")),
      body: Center(
        child: Column(
          spacing: 15,
          children: [
            Button(),
            Button(),
            Button(),
            Button(),
          ],
        ),
      ),
    ),
  ),
);

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() => _SelectButtonState();
}

class _SelectButtonState extends State<Button> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isSelected ? Colors.blue[500] : Colors.blue[50],
        ),
        onPressed: () => {
          setState(() {
            isSelected = !isSelected;
          })
        },
        child: Center(
          child: Text(
            isSelected ? "Selected" : "Not Selected",
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
            ),
          )
        ),
      ),
    );
  }
}
