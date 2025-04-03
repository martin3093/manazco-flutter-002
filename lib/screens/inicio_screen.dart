import 'package:flutter/material.dart';
import 'static_screen.dart';
import 'counter_screen.dart';
import 'inicio_screen.dart';
import 'acerca_de_screen.dart';
import 'contacto_screen.dart';
import '../widgets/contador_widget.dart';

class InicioScreen extends StatefulWidget {
  const InicioScreen({super.key});

  @override
  State<InicioScreen> createState() => _InicioScreenState();
}

class _InicioScreenState extends State<InicioScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Inicio')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Bienvenido', style: TextStyle(fontSize: 24)),
            const ContadorWidget(), // Widget del contador
            const SizedBox(height: 20),
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
              child: const Text('Contactos'),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
