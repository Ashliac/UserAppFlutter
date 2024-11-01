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
        title: const Text('Crear Perfil', style: TextStyle(fontSize: 24)),
        backgroundColor: const Color.fromARGB(226, 161, 181, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _ageController,
                decoration: const InputDecoration(
                  labelText: 'Edad',
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.calendar_today),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _occupationController,
                decoration: const InputDecoration(
                  labelText: 'Ocupación',
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.work),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                icon: const Icon(Icons.save, size: 30),
                label: const Text('Guardar y Ver Perfil',
                    style: TextStyle(fontSize: 15)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(226, 161, 181, 255),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                ),
                onPressed: _saveProfile,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
