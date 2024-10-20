//Elian Rueda Espinosa
//App Restaurante

//La clase Hamburguesas nos ayudará a ver los distintos tipos de hamburguesas que existen.

import 'package:flutter/material.dart';
import '../core/base_screen.dart'; // Se importa base_screen

//Se realiza el proceso de BaseScreen
class HamburguesasScreen extends BaseScreen {
  const HamburguesasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        'assets/images/Hamburguesas.png', // Se elige la imagen de fondo.
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover, // Se ajusta la imagen para que cubra toda la pantalla.
      ),
    );
  }
}