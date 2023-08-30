import 'package:flutter/material.dart';

class Solver extends StatefulWidget {
  const Solver({super.key});

  @override
  State<Solver> createState() => _SolverState();
}

class _SolverState extends State<Solver> {
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
    );
  }
}
