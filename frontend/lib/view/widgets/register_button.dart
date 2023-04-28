import "package:flutter/material.dart";
import '../pages/user_list_page.dart';

class RegisterButton extends StatelessWidget {
    const RegisterButton({super.key});

    @override
    Widget build(BuildContext context) {
        return SizedBox(
            height: 40,
            width: 100,
            child: ElevatedButton(
                onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) {
                                return UserListPage();
                            },
                        ),
                    );
                },
                style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll<Color>(Color.fromARGB(255, 255, 110, 0)),
                ),
                child: const Text("ENVIAR"),
            ),
        );
    }
}