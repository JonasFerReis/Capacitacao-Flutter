import "package:flutter/material.dart";
import "user_list_info.dart";

class UserListCard extends StatefulWidget {

    final UserListInfo userInfo;

    const UserListCard({super.key, required this.userInfo});

    @override
    State<UserListCard> createState() {
        return _UserListCardState(userInfo);
    }
}

class _UserListCardState extends State<UserListCard> {

    final UserListInfo userInfo;
    double cardWidth = 1;

    _UserListCardState(this.userInfo);

    @override
    Widget build(BuildContext context){

        var screenWidth = MediaQuery.of(context).size.width;

        return Stack(
            children: [
                Container(
                    height: 50,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: (screenWidth * 0.075) - 16),
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_sharp),
                        color: Colors.white,
                    ),
                ),
                GestureDetector(
                    onHorizontalDragUpdate: (DragUpdateDetails details) {
                        setState(() {
                            cardWidth = details.primaryDelta! < 0 ? 0.85 : 1;
                        });
                    },
                    child: AnimatedContainer(
                        height: 50,
                        width: screenWidth * cardWidth,
                        padding: const EdgeInsets.only(left: 15, right: 15),
                        duration: const Duration(milliseconds: 100),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 120, 0, 218),
                                    blurRadius: 0,
                                    offset: Offset(1, 1),
                                )
                            ]
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                                userInfo,
                                const Icon(
                                    Icons.edit,
                                    color: Color.fromARGB(255, 120, 0, 218),
                                ),
                            ],
                        )
                    ),
                ),
            ],
        );
    }
}