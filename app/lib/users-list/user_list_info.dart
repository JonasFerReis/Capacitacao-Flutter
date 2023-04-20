import "package:flutter/material.dart";

class UserListInfo extends StatefulWidget {
    const UserListInfo({super.key});

    @override
    _UserListInfoState createState(){
        return _UserListInfoState();
    }
}

class _UserListInfoState extends State<UserListInfo> {
    
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
                    children: const <Text>[
                        Text(
                            "USER21493",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                            ),
                        ),
                        Text(
                            "user21493@email.com",
                            style: TextStyle(
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