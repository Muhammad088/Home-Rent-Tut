import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleIconButton extends StatelessWidget {
  const CircleIconButton(
      {super.key, required this.iconUrl, required this.color});
  final String iconUrl;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 12,
      backgroundColor: color,
      child: SvgPicture.asset(iconUrl),
    );
  }
}
