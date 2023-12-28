// round_icon.dart

import 'package:flutter/material.dart';

class RoundIcon extends StatelessWidget {
  RoundIcon({required this.icon, this.onPressed});

  final IconData? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 10.0,
      disabledElevation: 10.0,
      constraints: BoxConstraints.tightFor(width: 56.0, height: 56.0),
      shape: const CircleBorder(),
      fillColor: Colors.grey,
    );
  }
}
