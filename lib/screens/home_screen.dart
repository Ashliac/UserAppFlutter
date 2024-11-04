import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Inicio',
          style: TextStyle(
              fontSize: 28, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
        ),
        backgroundColor: const Color.fromARGB(226, 161, 181, 255),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: ElevatedButton.icon(
            icon: const Icon(Icons.person_add_alt_1,
                size: 32), // Cambiado a un icono más moderno
            label: const Text('Crear perfil',
                style: TextStyle(fontSize: 20, fontFamily: 'Roboto')),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(226, 161, 181, 255),
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(50), // Bordes más redondeados
                side: const BorderSide(
                    color: Colors.white, width: 2), // Borde blanco
              ),
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/create-profile');
            },
          ),
        ),
      ),
    );
  }
}
