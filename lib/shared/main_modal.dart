import 'package:flutter/material.dart';

class MainModal extends StatelessWidget {
  final Widget child;

  MainModal({
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: child ?? Container(),
    );
  }
}
