//Elian Rueda Espinosa
//App Restaurante

//La clase Home nos ayudará a ver la bienvenida de la aplicación (Cuando ingresa un usuario).

import 'package:flutter/material.dart';
import '../core/base_screen.dart'; // Se importa base_screen
import '../screens/menu_screen.dart'; // Se importa la pantalla 'Menú'
import '../widgets/transparent_button.dart'; // Se importa la clase 'Boton Transparente'

//Se realiza el proceso de BaseScreen
class HomeScreen extends BaseScreen {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Inicio.png', // Se elige la imagen de fondo.
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover, // Se ajusta la imagen para que cubra toda la pantalla.
          ),

          // Botón que nos lleva al Menu
          Positioned( // Se asigna la posición del boton
            left: 20,
            top: 30,
            child: TransparentButton(
              width: 48,
              height: 48,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MenuScreen()), // Esté botón nos llevara a MenuScreen
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}