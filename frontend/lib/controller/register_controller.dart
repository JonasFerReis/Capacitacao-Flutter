import "package:capacitacao/model/user_model.dart";
import "package:http/http.dart" as http;

class RegisterController {

    void postUser({required UserModel user}) async {   
        try {
            await http.post(
                Uri.parse("http://localhost:8080/cadastrar"),
                headers: {
                    'Content-Type': 'application/json; charset=UTF-8'
                },
                body: user.toJson()
            );
        }
        catch (e) {
            throw Exception("ERROR: $e");
        }
    }

}