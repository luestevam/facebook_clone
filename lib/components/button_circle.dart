import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class ButtonCircle extends StatelessWidget {
  final IconData icone;
  final double iconeTamanho;
  final VoidCallback onPressed;

  const ButtonCircle({
    Key? key,
    required this.icone,
    required this.iconeTamanho,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Container(
      decoration: BoxDecoration(
          color: Colors.grey[200],
          shape: BoxShape.circle
      ),
      margin: EdgeInsets.all(6),
      child: IconButton(
        onPressed: (){},
        icon: Icon(icone),
        iconSize: 30,
        color: Colors.black,
      ),
    );
  }
}