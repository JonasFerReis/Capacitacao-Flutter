import "package:flutter/material.dart";
import "user_list_card.dart";


class UserListPage extends StatelessWidget {
    const UserListPage({super.key});

    final List<Widget> userList = const [
        UserListCard(),
        UserListCard(),
        UserListCard(),
    ];
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                shadowColor: Colors.transparent,
                iconTheme: const IconThemeData(
                    color: Colors.black
                ),
                title: const Text(
                    "USUÁRIOS",
                    style: TextStyle(
                        color: Colors.black,
                    ),
                ),
            ),
            body: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: userList,
                ),
            ),
        );
    }
}