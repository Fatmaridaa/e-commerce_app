import 'package:flutter/material.dart';
import 'package:appbar_animated/appbar_animated.dart';

class CustomAppBar extends StatelessWidget {
  final ColorAnimated colorAnimated;

  const CustomAppBar({Key? key, required this.colorAnimated}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: colorAnimated.background,
      elevation: 0,
      leading: Image.asset(
      'assets/images/logo.png',
      color: colorAnimated.color,

    ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.logout,
            color: colorAnimated.color,
          ),
        ),
      ],
    );
  }
}
