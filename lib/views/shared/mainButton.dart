import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class mainButton extends StatelessWidget {
  final VoidCallback onTap;

  const mainButton({Key? key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onTap,
        icon: Icon(
          Icons.arrow_circle_right_rounded,
          color: Colors.white,
          size: 17.w,
        ));
  }
}
