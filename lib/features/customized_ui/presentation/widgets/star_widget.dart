import 'package:flutter/material.dart';

class StarWidget extends StatelessWidget {
  final double size;
  final double top;
  final double left;
  final double right;

  const StarWidget({
    super.key,
    required this.size,
    this.top = 0,
    this.left = 0,
    this.right = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left > 0 ? left : null,
      right: right > 0 ? right : null,

      child: Image.asset('assets/images/Star.png', width: size, height: size),
    );
  }
}
