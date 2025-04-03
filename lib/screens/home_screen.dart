import 'package:flutter/material.dart';
import 'static_screen.dart';
import 'counter_screen.dart';
import 'inicio_screen.dart';
import 'acerca_de_screen.dart';
import 'contacto_screen.dart';

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
                  MaterialPageRoute(
                    builder: (context) => const AcercaDeScreen(),
                  ),
                );
              },
              child: const Text('Ir a Acerca de'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ContactoScreen(),
                  ),
                );
              },
              child: const Text('Ir a Contacto'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
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
