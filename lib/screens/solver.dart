import 'package:flutter/material.dart';

class Solver extends StatelessWidget {
  const Solver({super.key});

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
      body: Center(
        child: sudokuSolver(),
      ),
    );
  }
}
