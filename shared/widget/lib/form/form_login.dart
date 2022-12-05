import 'package:flutter/material.dart';
import 'package:widget/text_field/custom_text_field.dart';

class FormLogin extends StatelessWidget {
  final TextEditingController controller;

  const FormLogin({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          CustomTextField(
            labelText: "Username",
            controller: controller,
            obscureText: false,
            onChanged: (value) {},
            hintText: "Only hint Text",
            errorText: "error text here",
          ),
          CustomTextField(
            labelText: "Password",
            controller: controller,
            obscureText: false,
            onChanged: (value) {},
            hintText: "Only hint Text",
            errorText: "error text here",
          ),
        ],
      ),
    );
  }
}
