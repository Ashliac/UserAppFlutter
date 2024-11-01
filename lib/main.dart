import 'package:flutter/material.dart';
import 'package:user_app/config/router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi App',
      initialRoute: '/',
      routes: AppRoutes.routes,
    );
  }
}
