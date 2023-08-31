import 'package:flutter/material.dart';
import 'package:sudoku_solver/widgets/grids.dart';

class SudokuApp extends StatelessWidget {
  const SudokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Add sudoku input",
          style: TextStyle(
            fontSize: 16,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: SudokuGrid(),
      ),
    );
  }
}
