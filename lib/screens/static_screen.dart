import 'package:flutter/material.dart';

class StaticScreen extends StatelessWidget {
  const StaticScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pantalla estática')),
      body: const Center(
        child: Text('Este es un texto fijo.', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
