import "package:flutter/material.dart";

class UserListInfo extends StatelessWidget {

    final String name;
    final String email;

    const UserListInfo({super.key, required this.name, required this.email});

    @override
    Widget build(BuildContext context) {
        return Row(
            children: [
                Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                    ),
                ),
                SizedBox(width: 15),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                            name,
                            style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                            ),
                        ),
                        Text(
                            email,
                            style: const TextStyle(
                                fontSize: 14,
                                // fontWeight: FontWeight.bold,
                            ),
                        ),
                    ],
                ),
            ],
        );
    }
}