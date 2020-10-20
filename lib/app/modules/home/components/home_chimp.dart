import 'package:flutter/material.dart';

class HomeChimp extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onTap;
  final Color keyColor;

  HomeChimp({
    this.icon,
    this.label,
    this.onTap,
    this.keyColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTap != null) {
          onTap();
        }
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon?.icon ?? Icons.info, color: keyColor),
          SizedBox(width: 20),
          Text(label ?? '', style: TextStyle(color: keyColor)),
        ],
      ),
    );
  }
}
