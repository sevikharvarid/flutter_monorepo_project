import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String errorText;
  final TextEditingController controller;
  final bool obscureText;
  final ValueChanged<String> onChanged;

  const CustomTextField({
    Key? key,
    required this.labelText,
    required this.controller,
    required this.obscureText,
    required this.onChanged,
    required this.hintText,
    required this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: const TextStyle(
            color: Colors.blueAccent,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Container(
          color: Colors.transparent,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextField(
                  obscureText: obscureText,
                  controller: controller,
                  onChanged: onChanged,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1.5),
                      borderSide: const BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 13.0,
                      vertical: 10.0,
                    ),
                    hintText: hintText,
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    hoverColor: Colors.blue,
                    focusColor: Colors.blue,
                    filled: true,
                    fillColor: Colors.grey,
                  ),
                ),
              )
            ],
          ),
        ),
        Text(
          errorText ?? "",
          style: const TextStyle(color: Colors.red),
        ),
      ],
    );
  }
}
