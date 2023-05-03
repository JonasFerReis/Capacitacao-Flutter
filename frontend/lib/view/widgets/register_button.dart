import 'package:capacitacao/model/user_model.dart';
import "package:flutter/material.dart";
import '../pages/user_list_page.dart';

class RegisterButton extends StatelessWidget {

    final GlobalKey<FormState>? formKey;
    UserModel? user;

    RegisterButton({super.key, this.formKey, this.user});

    @override
    Widget build(BuildContext context) {
        return SizedBox(
            height: 40,
            width: 100,
            child: ElevatedButton(
                onPressed: () {
                    if (formKey!.currentState!.validate()) {
                        formKey!.currentState!.save();

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
        );
    }
}