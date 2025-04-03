import 'package:flutter/material.dart';

class ContactoScreen extends StatefulWidget {
  const ContactoScreen({super.key});

  @override
  State<ContactoScreen> createState() => _ContactoScreenState();
}

class _ContactoScreenState extends State<ContactoScreen> {
  final TextEditingController _controller =
      TextEditingController(); // Controlador para el TextField

  @override
  void initState() {
    super.initState();
    print('initState: La pantalla Contacto ha sido creada.');
  }

  @override
  void dispose() {
    print('dispose: El mensaje ingresado fue: "${_controller.text}"');
    _controller.dispose(); // Limpia el controlador para liberar recursos
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacto'),
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
      //  body: const Center(

      //),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Contáctanos', style: TextStyle(fontSize: 24)),
            const Text('Escribe tu mensaje:', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            TextField(
              controller: _controller, // Asigna el controlador al TextField
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Escribe aquí tu mensaje...',
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Cierra la pantalla
              },
              child: const Text('Enviar y regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
