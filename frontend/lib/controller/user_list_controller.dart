import 'dart:io';
import "package:http/http.dart" as http;
import 'dart:convert';
import '../model/user_model.dart';

class UserListController {

    List<UserModel> userList = [];

    Future<List<UserModel>> getUserList() async {
        try {
            var response = await http.get(Uri.parse("localhost:8080/listar"));

            final List<dynamic> responseDecoded = jsonDecode(response.body);

            userList = responseDecoded.map((user) {
                return UserModel.fromJson(user);
            }).toList();

            return userList;
        }
        on HttpException catch(e) {
            return throw HttpException("ERRO NA REQUISIÇÃO: ${e.message}");
        }
        catch(e) {
            return throw Exception("ERROR: $e");
        }
    }
}