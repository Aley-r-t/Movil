// lib/screens/menu_screen.dart
import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(24.0),
        children: [
          Text("MENU", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ListTile(title: Text("Home"), onTap: () => Navigator.pushNamed(context, '/items'),),
          ListTile(title: Text("Profile"), onTap: ()  => Navigator.pushNamed(context, '/register')),
          ListTile(title: Text("Settings"), onTap: () => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Settings aún no implementado')),),),
          ListTile(title: Text("Logout"), onTap: () => Navigator.popUntil(context, ModalRoute.withName('/'))),
        ],
      ),
    );
  }
}
