import "package:flutter/material.dart";
import 'view/pages/register_page.dart';

class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        return const MaterialApp(title: "Emakers App", home: RegisterPage(),);
    }
}

void main() {
    runApp(const MyApp());
}