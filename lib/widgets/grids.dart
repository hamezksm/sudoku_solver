import 'package:flutter/material.dart';

class SudokuGrid extends StatefulWidget {
  const SudokuGrid({super.key});

  @override
  State<SudokuGrid> createState() => _SudokuGridState();
}

class _SudokuGridState extends State<SudokuGrid> {
  List<List<TextEditingController>> controllers =
      []; //the outer column text editing controllers.

  @override
  void initState() {
    super.initState();
    //Initialize the text editing controllers
    for (int row = 0; row < 9; row++) {
      List<TextEditingController> rowControllers = [];
      for (int col = 0; col < 9; col++) {
        rowControllers.add(TextEditingController(text: ""));
      }
      controllers.add(rowControllers);
    }
  }

  @override
  void dispose() {
    // Dispose the text Editing controllers when they are no longer needed
    for (var rowControllers in controllers) {
      for (var controller in rowControllers) {
        controller.dispose();
      }
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: controllers.map(
        (rowControllers) {
          return Row(
            children: rowControllers.map(
              (controller) {
                return SizedBox(
                  width: 40,
                  height: 50,
                  child: TextField(
                    controller: controller,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.zero,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ).toList(),
          );
        },
      ).toList(),
    );
  }
}
