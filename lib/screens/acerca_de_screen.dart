import 'package:flutter/material.dart';

class AcercaDeScreen extends StatelessWidget {
  const AcercaDeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Acerca de'),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context); // Regresa a la pantalla anterior
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange, // Color de fondo del botón
              foregroundColor: Colors.white, // Color del texto
              elevation: 0, // Sin sombra para que combine con la AppBar
            ),
            child: const Text('Inicio'),
          ),
        ],
      ),
      body: const Center(
        child: Text('Sobre nosotros', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
