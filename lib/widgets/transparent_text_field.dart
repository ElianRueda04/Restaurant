//Elian Rueda Espinosa
//App Restaurante

//La clase TextField nos ayudará a que los TextField se muestren de forma transparente.

import 'package:flutter/material.dart';

class TransparentTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;

  const TransparentTextField({
    Key? key,
    required this.hintText,
    this.obscureText = false,
  }) : super(key: key);

  //Se asignan las características del boton
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.transparent,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
