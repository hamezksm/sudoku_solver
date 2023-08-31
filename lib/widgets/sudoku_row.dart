import 'package:flutter/material.dart';

class SudokuRow extends StatelessWidget {
  const SudokuRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        for (int col = 0; col < 3; col++) const SudokuSubGrid(),
      ],
    );
  }
}

class SudokuSubGrid extends StatefulWidget {
  const SudokuSubGrid({super.key});

  @override
  State<SudokuSubGrid> createState() => _SudokuSubGrid();
}

class _SudokuSubGrid extends State<SudokuSubGrid> {
  List<List<TextEditingController>> controllers =
      []; //the outer column text editing controllers.

  @override
  void initState() {
    super.initState();
    //Initialize the text editing controllers
    for (int row = 0; row < 3; row++) {
      List<TextEditingController> rowControllers = [];
      for (int col = 0; col < 3; col++) {
        rowControllers.add(TextEditingController());
      }
      controllers.add(rowControllers);
    }
  }

  @override
  void dispose() {
    // Dispose the text Editing controllers when they are no longer needed
    for (var rowControllers in controllers) {
      for (var controllers in rowControllers) {
        controllers.dispose();
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
                  width: 30,
                  height: 45,
                  child: TextField(
                    controller: controller,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
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
