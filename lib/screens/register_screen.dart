// lib/screens/register_screen.dart
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final nameController = TextEditingController();
  final priceController = TextEditingController();
  final List<Map<String, String>> productos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Registro de Productos')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            Text("REGISTRO DE PRODUCTOS", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            TextField(controller: nameController, decoration: InputDecoration(labelText: 'Nombre del producto')),
            TextField(controller: priceController, decoration: InputDecoration(labelText: 'Precio'), keyboardType: TextInputType.number),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String nombre = nameController.text.trim();
                String precio = priceController.text.trim();
                if (nombre.isNotEmpty && precio.isNotEmpty) {
                  setState(() {
                    productos.add({"nombre": nombre, "precio": precio});
                    nameController.clear();
                    priceController.clear();
                  });
                }
              },
              child: Text("GUARDAR"),
            ),
            Divider(height: 40),
            Text("Lista de productos registrados:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            Expanded(
              child: ListView.builder(
                itemCount: productos.length,
                itemBuilder: (context, index) {
                  final producto = productos[index];
                  return ListTile(
                    title: Text(producto["nombre"]!),
                    subtitle: Text("S/ ${producto["precio"]}"),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}