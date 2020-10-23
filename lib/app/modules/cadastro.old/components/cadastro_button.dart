import 'package:flutter/material.dart';

class CadastroButton extends StatelessWidget {
  final String label;
  final Function onTap;

  CadastroButton(this.label, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(45),
      child: InkWell(
        borderRadius: BorderRadius.circular(45),
        onTap: () {
          if (onTap != null) onTap();
        },
        child: Container(
          alignment: Alignment.center,
          height: 28,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(45),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Stack(
            // mainAxisSize: MainAxisSize.min,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            alignment: Alignment.center,
            children: [
              Text(
                label ?? '',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(width: 45),
              Row(
                children: [
                  Expanded(child: Container()),
                  Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                    size: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
