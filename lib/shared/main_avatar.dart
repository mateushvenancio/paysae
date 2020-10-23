import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainAvatar extends StatelessWidget {
  final String avatar;
  final double radius;

  const MainAvatar({
    this.avatar,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black,
      child: avatar != null
          ? Image.network(avatar)
          : Icon(
              FontAwesomeIcons.userCircle,
              size: 70,
              color: Colors.white,
            ),
      radius: radius ?? 50,
    );
  }
}
