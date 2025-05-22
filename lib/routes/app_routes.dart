import 'package:flutter/material.dart';
import '../screens/login_screen.dart';
import '../screens/menu_screen.dart';
import '../screens/list_screen.dart';
import '../screens/register_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => LoginScreen(),
  '/menu': (context) => MenuScreen(),
  '/items': (context) => ListScreen(),
  '/register': (context) => RegisterScreen(),
};
