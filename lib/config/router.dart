import 'package:flutter/material.dart';
import 'package:user_app/screens/profile_screen.dart';
import '../screens/home_screen.dart';
import '../screens/create_profile_screen.dart';

class AppRoutes {
  static final Map<String, WidgetBuilder> routes = {
    '/': (context) => HomeScreen(),
    '/create-profile': (context) => CreateProfileScreen(),
    '/profile': (context) => ProfileScreen(),
  };
}
