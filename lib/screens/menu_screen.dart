//Elian Rueda Espinosa
//App Restaurante

//La clase Menu nos ayudará a ver las distintas opciones que puede tener el usuario.

import 'package:flutter/material.dart';
import '../core/base_screen.dart'; // Asegúrate de importar BaseScreen
import '../screens/home_screen.dart'; // Asegúrate de importar la pantalla de inicio
import '../screens/comida_screen.dart'; // Asegúrate de importar la pantalla de inicio
import '../widgets/transparent_button.dart'; // Importa el botón transparente

class MenuScreen extends BaseScreen {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Menu.png', // Se elige la imagen de fondo.
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover, // Se ajusta la imagen para que cubra toda la pantalla.
          ),

          // Botón para ir a HomeScreen
          Positioned( // Se asigna la posición del boton
            left: 25,
            top: 373,
            child: TransparentButton(
              width: 199,
              height: 44,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()), // Esté botón nos llevara a HomeScreen
                );
              },
            ),
          ),

          // Botón para ir a ComidaScreen
          Positioned( // Se asigna la posición del boton
            left: 23,
            top: 505,
            child: TransparentButton(
              width: 201,
              height: 44,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ComidaScreen()), // Esté botón nos llevara a CommidaScreen
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}