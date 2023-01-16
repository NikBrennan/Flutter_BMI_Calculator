import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../constants.dart';

class ReusableFontIcon extends StatelessWidget {
  const ReusableFontIcon({Key? key, required this.icon, required this.gender})
      : super(key: key);

  final IconData icon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          gender,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
