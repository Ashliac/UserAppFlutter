import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil', style: TextStyle(fontSize: 24)),
        backgroundColor: const Color.fromARGB(226, 161, 181, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nombre: ${args['name']}',
              style: const TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 10),
            Text('Edad: ${args['age']}', style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 10),
            Text('Ocupación: ${args['occupation']}',
                style: const TextStyle(fontSize: 22)),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              icon: const Icon(Icons.home, size: 30),
              label: const Text('Regresar a Inicio',
                  style: TextStyle(fontSize: 18)),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(226, 161, 181, 255),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
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
}
