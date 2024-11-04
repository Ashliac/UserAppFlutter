import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto')),
        backgroundColor: const Color.fromARGB(226, 161, 181, 255),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProfileDetail('Nombre: ${args['name']}'),
            _buildProfileDetail('Edad: ${args['age']}'),
            _buildProfileDetail('Ocupación: ${args['occupation']}'),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.home, size: 32), // Icono actualizado
              label: const Text('Regresar a Inicio',
                  style: TextStyle(fontSize: 18, fontFamily: 'Roboto')),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(226, 161, 181, 255),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(50), // Bordes más redondeados
                  side: const BorderSide(
                      color: Colors.white, width: 2), // Borde blanco
                ),
              ),
              onPressed: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileDetail(String detail) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        detail,
        style: const TextStyle(
            fontSize: 22, fontWeight: FontWeight.w500, fontFamily: 'Roboto'),
      ),
    );
  }
}
