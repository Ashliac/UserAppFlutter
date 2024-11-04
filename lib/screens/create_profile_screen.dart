import 'package:flutter/material.dart';

class CreateProfileScreen extends StatefulWidget {
  @override
  _CreateProfileScreenState createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _occupationController = TextEditingController();

  void _saveProfile() {
    Navigator.pushNamed(
      context,
      '/profile',
      arguments: {
        'name': _nameController.text,
        'age': _ageController.text,
        'occupation': _occupationController.text,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Perfil',
            style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto')),
        backgroundColor: const Color.fromARGB(226, 161, 181, 255),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildTextField(_nameController, 'Nombre', Icons.person),
              const SizedBox(height: 16),
              _buildTextField(
                  _ageController, 'Edad', Icons.cake, TextInputType.number),
              const SizedBox(height: 16),
              _buildTextField(_occupationController, 'Ocupación', Icons.work),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                icon: const Icon(Icons.save_alt, size: 32), // Icono actualizado
                label: const Text('Guardar y Ver Perfil',
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
                onPressed: _saveProfile,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      TextEditingController controller, String label, IconData icon,
      [TextInputType inputType = TextInputType.text]) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
            fontFamily: 'Roboto', fontSize: 16, fontWeight: FontWeight.w500),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        prefixIcon: Icon(icon, size: 28), // Tamaño del icono
      ),
      keyboardType: inputType,
    );
  }
}
