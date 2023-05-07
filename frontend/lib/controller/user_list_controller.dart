import "package:http/http.dart" as http;
import 'dart:convert';
import '../model/user_model.dart';

class UserListController {

    List<UserModel> userList = [];

    Future<List<UserModel>> getUserList() async {
        try {
            var response = await http.get(Uri.parse("http://localhost:8080/listar"));

            final List<dynamic> responseDecoded = jsonDecode(response.body);

            userList = responseDecoded.map((user) {
                return UserModel.fromJson(user);
            }).toList();

            return userList;
        }
        catch(e) {
            return throw Exception("ERROR: $e");
        }
    }

}