//Elian Rueda Espinosa
//App Restaurante

//La clase Restaurants nos ayudará a entrar a la aplicación.

import 'package:flutter/material.dart';
import '../screens/login_screen.dart'; // Asegúrate de que la ruta sea correcta
import '../core/base_screen.dart'; // Heredamos de BaseScreen
import '../widgets/transparent_button.dart'; // Importa el botón transparente

//Se realiza el proceso de BaseScreen
class WelcomeScreen extends BaseScreen {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Bienvenida.png', // Se elige la imagen de fondo.
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover, // Se ajusta la imagen para que cubra toda la pantalla.
          ),

          // Botón para ir a la pantalla de inicio de sesión
          Positioned( // Se asigna la posición del boton
            left: 62,
            top: 659,
            child: TransparentButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()), // Esté botón nos llevara a LoginScreen
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
