import 'package:flutter/material.dart';
import 'package:sudoku_solver/screens/solver.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final ThemeData theme = ThemeData();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme.copyWith(
        primaryColor: Colors.amber[700],
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.amber[700],
          secondary: Colors.amber[300],
        ),
      ),
      home: const Solver(),
    ),
  );
}
