import 'dart:convert';

class UserModel {
    final String nome;
    final String email;
    final String senha;

    UserModel({this.nome = "", this.email = "", this.senha = ""});

    factory UserModel.fromJson(Map json) {
        return UserModel(
            nome: json["nome"], 
            email: json["email"], 
            senha: json["senha"],
        );
    }

    String toJson(){
        return jsonEncode({
            "nome": nome, 
            "email": email, 
            "senha": senha
        });
    }

    UserModel copyWith({int? id, String? nome, String? email, String? senha}) {
        return UserModel(
            nome: nome ?? this.nome,
            email: email ?? this.email,
            senha: senha ?? this.senha,
        );    
    }

    @override
    String toString() {
        return "nome: $nome\nemail: $email\nsenha: $senha";
    }
}