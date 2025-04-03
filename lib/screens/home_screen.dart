import 'package:flutter/material.dart';
import 'static_screen.dart';
import 'counter_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stateless vs Stateful')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StaticScreen()),
                );
              },
              child: const Text('Pantalla estática (StatelessWidget)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CounterScreen(),
                  ),
                );
              },
              child: const Text('Pantalla dinámica (StatefulWidget)'),
            ),
          ],
        ),
      ),
    );
  }
}
