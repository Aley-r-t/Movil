// lib/screens/list_screen.dart
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Items")),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return ListTile(title: Text('Item ${index + 1}'));
        },
      ),
    );
  }
}
