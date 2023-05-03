import 'package:capacitacao/controller/register_controller.dart';
import 'package:capacitacao/model/user_model.dart';
import "package:flutter/material.dart";
import '../pages/user_list_page.dart';
import 'register_form_field.dart';

class RegisterForm extends StatelessWidget {
 
    final formKey = GlobalKey<FormState>();
    final _registerController = RegisterController();
    var user = UserModel();

    RegisterForm({super.key});

    @override
    Widget build(BuildContext context) {
        return Form(
            key: formKey,
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
                        RegisterFormField(
                            label: "NOME:", 
                            onSaved: (value) {
                                user = user.copyWith(nome: value);
                            },
                        ),
                        RegisterFormField(
                            label: "EMAIL:",
                            onSaved: (value) {
                                user = user.copyWith(email: value);
                            },
                        ),
                        RegisterFormField(
                            label: "SENHA:",
                            onSaved: (value) {
                                user = user.copyWith(senha: value);
                                print(user);
                            },    
                        ),
                        RegisterFormField(
                            label: "CONFIRMAR SENHA:",
                        ),
                        SizedBox(
                            height: 40,
                            width: 100,
                            child: ElevatedButton(
                                onPressed: () {
                                    if (formKey.currentState!.validate()) {
                                        formKey.currentState!.save();

                                        print("BUTTON:");
                                        print(user.toString());

                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) {
                                                    return UserListPage();
                                                },
                                            ),
                                        );
                                    }
                                },
                                style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 255, 110, 0)),
                                ),
                                child: const Text("ENVIAR"),
                            ),
                        ),
                    ]
                ),
            ),
        );
    }
}