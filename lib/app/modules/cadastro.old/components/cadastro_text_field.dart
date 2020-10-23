import 'package:flutter/material.dart';

class CadastroTextField extends StatelessWidget {
  final Icon icon;
  final String hint;
  final Function(String) onChanged;

  CadastroTextField({
    @required this.icon,
    @required this.hint,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
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
            padding: const EdgeInsets.only(left: 20, right: 13),
            child: Icon(icon?.icon ?? Icons.info, color: Colors.grey),
          ),
          Expanded(
            child: TextField(
              onChanged: onChanged,
              decoration: InputDecoration(
                isDense: true,
                border: InputBorder.none,
                hintText: hint ?? '',
                hintStyle: TextStyle(
                  fontSize: 17,
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
