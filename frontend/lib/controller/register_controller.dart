import "package:capacitacao/model/user_model.dart";
import "package:http/http.dart" as http;

class RegisterController {

    void postUser({required UserModel user}) async {
        try {
            var response = await http.post(
                Uri.parse('https://jsonplaceholder.typicode.com/posts'), 
                body: user.toJson(),
            );

            print(response.body);
            print(user.toJson());
        }
        catch(e) {
            print(e);
        }
    }
}