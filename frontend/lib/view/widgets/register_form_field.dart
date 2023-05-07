import "package:flutter/material.dart";

class RegisterFormField extends StatelessWidget { 

    final String label;
    final void Function(String?)? onSaved;

    const RegisterFormField({super.key, this.label = "", this.onSaved});

    @override
    Widget build(BuildContext context) {

        const primaryColor = Color.fromARGB(255, 120, 0, 218);

        const inputBorderStyle = OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide(
                color: primaryColor,
                width: 1.5,
            )
        );

        return TextFormField(
            validator: (value) {
                if (value == null || value.isEmpty) {
                    return "Campo obrigatório";
                }
            },
            onSaved: onSaved,
            cursorColor: primaryColor,
            decoration: InputDecoration(
                labelText: label,
                labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                ),
                floatingLabelStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                ),
                enabledBorder: inputBorderStyle,
                focusedBorder: inputBorderStyle,
            ),
        );
    }
}