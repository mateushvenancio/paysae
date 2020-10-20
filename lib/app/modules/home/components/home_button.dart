import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onTap;
  final double horizontalPadding;
  final double verticalMargin;
  final Color keyColor;

  HomeButton({
    this.icon,
    this.label,
    this.onTap,
    this.horizontalPadding,
    this.verticalMargin,
    this.keyColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding ?? 60),
      margin: EdgeInsets.symmetric(vertical: verticalMargin ?? 10),
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
                fontSize: 18,
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
