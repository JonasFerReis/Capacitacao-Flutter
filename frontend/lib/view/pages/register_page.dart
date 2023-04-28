import 'package:flutter/material.dart';
import '../widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
    const RegisterPage({super.key});

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
                            RegisterForm(),
                        ],
                    ),
                ),
            ),
        );
    }
}