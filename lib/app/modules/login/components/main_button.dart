import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onTap;
  final Color keyColor;

  MainButton({
    this.icon,
    this.label,
    this.onTap,
    this.keyColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      height: 45,
      child: FlatButton(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(icon?.icon ?? Icons.info, color: this.keyColor),
            ),
            Text(
              label ?? 'Login',
              style: TextStyle(
                fontSize: 20,
                color: this.keyColor,
              ),
            ),
          ],
        ),
        onPressed: () {
          if (onTap != null) {
            onTap();
          }
        },
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(45),
          side: BorderSide(
            color: this.keyColor,
          ),
        ),
      ),
    );
  }
}
