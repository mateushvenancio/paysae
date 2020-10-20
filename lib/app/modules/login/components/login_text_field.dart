import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final Icon icon;
  final String hint;
  final Function(String) onChanged;

  LoginTextField({
    @required this.icon,
    @required this.hint,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(45),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: icon ?? Icon(Icons.info),
          ),
          Expanded(
            child: TextField(
              onChanged: onChanged,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: hint ?? '',
                hintStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              ),
              cursorColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
