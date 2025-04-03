import 'package:flutter/material.dart';

class ContadorWidget extends StatefulWidget {
  const ContadorWidget({super.key});

  @override
  State<ContadorWidget> createState() => _ContadorWidgetState();
}

class _ContadorWidgetState extends State<ContadorWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Contador: $_counter', style: const TextStyle(fontSize: 24)),
        const SizedBox(height: 10),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: const Text('Incrementar contador'),
        ),
      ],
    );
  }
}
