import "package:flutter/material.dart";
import 'register_form_field.dart';
import 'register_button.dart';

class RegisterForm extends StatelessWidget {
    const RegisterForm({super.key});

    @override
    Widget build(BuildContext context) {
        return Form(
            child: SizedBox(
                height: 400,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Text(
                            "CADASTRO", 
                            style: TextStyle(
                                fontSize: 20, 
                                fontWeight: FontWeight.bold,
                                fontFamily: "verdana",
                                color: Colors.black,
                            ),
                        ),
                        RegisterFormField(label: "NOME:"),
                        RegisterFormField(label: "EMAIL:"),
                        RegisterFormField(label: "SENHA:"),
                        RegisterFormField(label: "CONFIRMAR SENHA:"),
                        RegisterButton(),
                    ]
                ),
            ),
        );
    }
}