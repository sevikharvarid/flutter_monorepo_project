import 'package:flutter/material.dart';
import 'package:dependencies/bloc/bloc.dart';
import 'package:widget/text_field/custom_text_field.dart';
import 'package:widget/button/button_rounded.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          child: Center(
              child: ListView(
            children: [
              const SizedBox(
                height: 10,
              ),
              const Icon(
                Icons.ac_unit_sharp,
                size: 150,
                color: Colors.red,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTextField(
                labelText: "Username",
                controller: usernameController,
                obscureText: false,
                onChanged: (value) {},
                hintText: "Isi Username",
                errorText: "",
              ),
              CustomTextField(
                labelText: "Password",
                controller: passwordController,
                obscureText: false,
                onChanged: (value) {},
                hintText: "Isi Password",
                errorText: "",
              ),
              const RoundedButton(
                text: "Login",
                radius: 12.0,
                color: Colors.red,
              ),
            ],
          )),
        ),
      ),
    );
  }
}
