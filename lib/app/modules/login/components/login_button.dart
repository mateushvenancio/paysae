import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String label;
  final Function onTap;

  LoginButton({
    this.label,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      width: double.infinity,
      height: 45,
      child: FlatButton(
        child: Center(
          child: Text(
            label ?? 'Login',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
        onPressed: () {
          if (onTap != null) {
            onTap();
          }
        },
        color: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
      ),
    );
  }
}
