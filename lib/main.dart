import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart'; // Asegúrate de que la ruta sea correcta

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Restaurante', // Agrega un título a la aplicación (opcional)
      home: const WelcomeScreen(), // Pantalla inicial
      debugShowCheckedModeBanner: false, // Oculta la banda de depuración
      theme: ThemeData( // Opcional: Define un tema global
        primarySwatch: Colors.blue, // Puedes cambiar el color principal
        visualDensity: VisualDensity.adaptivePlatformDensity, // Mejora la densidad visual
      ),
    );
  }
}
