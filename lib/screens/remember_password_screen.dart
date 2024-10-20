//Elian Rueda Espinosa
//App Restaurante

//La clase Recordar Contraseña nos ayudará a que el usuario pueda recordar su contraseña.

import 'package:flutter/material.dart';
import '../screens/restaurants_screen.dart'; // Import de la pantalla de restaurantes
import '../core/base_screen.dart'; // Heredamos de BaseScreen
import '../widgets/transparent_text_field.dart'; // Importa el campo de texto transparente
import '../widgets/transparent_button.dart'; // Importa el botón transparente

class RememberPasswordScreen extends BaseScreen {
  const RememberPasswordScreen({Key? key}) : super(key: key); // Constructor constante

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Recordar.png', // Se elige la imagen de fondo.
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover, // Se ajusta la imagen para que cubra toda la pantalla.
          ),

          // Primer TextField (Usuario)
          Positioned( //Se asigna la posición del TextField
            left: 62,
            top: 445,
            child: SizedBox(
              width: 274,
              child: const TransparentTextField(hintText: '-'), // Se manda a llamar a TextField Transparente
            ),
          ),

          // Segundo TextField (Contraseña)
          Positioned(
            left: 62,
            top: 540, //Se asigna la posición del TextField
            child: SizedBox(
              width: 274,
              child: const TransparentTextField( // Se manda a llamar a TextField Transparente
                hintText: '-',
                obscureText: true, // Campo de texto obscuro para la contraseña
              ),
            ),
          ),

          // Botón para ir a la pantalla de restaurantes
          Positioned( // Se asigna la posición del boton
            left: 62,
            top: 680, // Posición del botón
            child: TransparentButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RestaurantsScreen(), // Esté botón nos llevara a RestaurantsScreen
                  ),
                );
              },
              width: 270,
              height: 68,
            ),
          ),
        ],
      ),
    );
  }
}

