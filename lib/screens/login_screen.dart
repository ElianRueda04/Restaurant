//Elian Rueda Espinosa
//App Restaurante

//La clase Login nos ayudará a ver el login de nuestra aplicación.

import 'package:flutter/material.dart';
import '../screens/restaurants_screen.dart'; // Se importa la pantalla 'Restaurantes'
import '../screens/remember_password_screen.dart'; // Se importa la pantalla 'Remember Password'
import '../core/base_screen.dart'; // Se importa base_screen
import '../widgets/transparent_text_field.dart'; // Se importa la clase 'TextField Transparente'
import '../widgets/transparent_button.dart'; // Se importa la clase 'Boton Transparente'

//Se realiza el proceso de BaseScreen
class LoginScreen extends BaseScreen {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/Login.png', // Se elige la imagen de fondo.
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
          Positioned( //Se asigna la posición del TextField
            left: 62,
            top: 540,
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
            top: 680,
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

          // Botón para ir a la pantalla de RememberPassword
          Positioned( // Se asigna la posición del boton
            left: 120,
            top: 748,
            child: TransparentButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RememberPasswordScreen(), // Esté botón nos llevara a RememberPasswordScreen
                  ),
                );
              },
              width: 152,
              height: 19,
            ),
          ),
        ],
      ),
    );
  }
}
