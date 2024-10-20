//Elian Rueda Espinosa
//App Restaurante

//La clase Restaurants nos ayudará a ver los distintos restaurantes que hay.

import 'package:flutter/material.dart';
import '../core/base_screen.dart'; // Heredamos de BaseScreen
import '../screens/home_screen.dart'; // Asegúrate de importar la pantalla de inicio
import '../widgets/transparent_button.dart'; // Importa el botón transparente

//Se realiza el proceso de BaseScreen
class RestaurantsScreen extends BaseScreen {
  const RestaurantsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Restaurantes.png', // Se elige la imagen de fondo.
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover, // Se ajusta la imagen para que cubra toda la pantalla.
          ),

          // Botón para ir a la pantalla de inicio (Bienvenida)
          Positioned( //Se asigna la posición del TextField
            left: 14,
            top: 361,
            child: TransparentButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(), // Esté botón nos llevara a HomeScreen
                  ),
                );
              },
              width: 176,
              height: 211,
            ),
          ),
        ],
      ),
    );
  }
}
