import 'package:flutter/material.dart';

const labellTextStyle = TextStyle(fontSize: 18.0);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String label;
  const IconContent({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: labellTextStyle,
        )
      ],
    );
  }
}
