import "package:flutter/material.dart";
import "../widgets/user_list_info.dart";
import "../widgets/user_list_card.dart";
import "../../controller/user_list_controller.dart";

class UserListPage extends StatelessWidget {
    UserListPage({super.key});

    final _userController = UserListController();

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
            body: FutureBuilder(
                future: _userController.getUserList(),
                builder: (context, snapshot) {
                    if (snapshot.hasError) {
                        return Center(
                            child: Text(snapshot.error.toString()),
                        );
                    }

                    if (snapshot.hasData) {
                        return ListView.builder(
                            itemCount: snapshot.data!.length,
                            itemBuilder: (context, index) => UserListCard(
                                userInfo: UserListInfo(
                                    name: snapshot.data![index].nome,
                                    email: snapshot.data![index].email,
                                ),
                            ),
                        );
                    }

                    return Center(
                        child: CircularProgressIndicator(),
                    ); 
                },
            ),
        );
    }
}