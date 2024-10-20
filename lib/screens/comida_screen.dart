//Elian Rueda Espinosa
//App Restaurante

//La clase Comida nos ayudará a ver los distintos platillos del menú.

import 'package:flutter/material.dart';
import '../core/base_screen.dart'; // Se importa base_screen
import '../screens/menu_screen.dart'; // Se importa la pantalla 'Menú'
import '../screens/hamburguesas_screen.dart'; // Se importa la pantalla 'Hamburguesas'
import '../widgets/transparent_button.dart'; // Se importa la clase 'Boton Transparente'

//Se realiza el proceso de BaseScreen
class ComidaScreen extends BaseScreen {
  const ComidaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Comida.png', // Se elige la imagen de fondo.
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover, // Se ajusta la imagen para que cubra toda la pantalla.
          ),

          // Botón que nos lleva al Menu
          Positioned( // Se asigna la posición del boton
            left: 20,
            top: 30,
            child: TransparentButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MenuScreen()), // Esté botón nos llevara a MenuScreen
                );
              },
              width: 48,
              height: 48,
            ),
          ),

          // Botón que nos lleva a ver la pantalla de Hamburguesas
          Positioned( // Se asigna la posición del boton
            left: 50,
            top: 270,
            child: TransparentButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HamburguesasScreen()), // Esté botón nos llevara a HamburguesasScreen
                );
              },
              width: 316,
              height: 169,
            ),
          ),
        ],
      ),
    );
  }
}