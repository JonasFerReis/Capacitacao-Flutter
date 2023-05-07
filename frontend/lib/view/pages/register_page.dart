import 'package:flutter/material.dart';
import 'user_list_page.dart';
import '../widgets/register_form_field.dart';
import '../../model/user_model.dart';
import '../../controller/register_controller.dart';

class RegisterPage extends StatelessWidget {

    final formKey = GlobalKey<FormState>();
    final _registerController = RegisterController();
    var user = UserModel();

    RegisterPage({super.key});

    @override
    Widget build(BuildContext context){
        return Scaffold(
            body: SingleChildScrollView(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                            SizedBox(
                                height: 200,
                                child: Image.asset(
                                    "./assets/images/Logo_completa.png",
                                ),
                            ),
                            Form(
                                key: formKey,
                                child: SizedBox(
                                    height: 400,
                                    width: MediaQuery.of(context).size.width * 0.9,
                                    child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                            const Text(
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

                                                            _registerController.postUser(user: user);

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
                            ),
                        ],
                    ),
                ),
            ),
        );
    }
}