

import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {

  IconData icon;
  Color? color;
  double? size;
  Color? iconColor;
  FloatingActionButtonWidget({super.key, required this.icon,  this.color, this.size, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return  FloatingActionButton.small(
        elevation: 0,
        backgroundColor:  color == null ?  Color(0xffF1F2F5) : color,
        child:  Icon(icon, color: iconColor == null ?Colors.black : iconColor, size: size == null ? 30 : size),
        onPressed: () {}
    );

  }
}
