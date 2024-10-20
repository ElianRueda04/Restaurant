//Elian Rueda Espinosa
//App Restaurante

//La clase Transparent_Button nos ayudará a que los botones se muestren de forma transparente.

import 'package:flutter/material.dart';

class TransparentButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double width;
  final double height;

  //Se obtienen las medidas del boton
  const TransparentButton({
    Key? key,
    required this.onPressed,
    required this.width,
    required this.height,
  }) : super(key: key);

  //Se asigna el color transparente
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.transparent,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          // Agrega aquí cualquier efecto visual deseado
        ),
      ),
    );
  }
}