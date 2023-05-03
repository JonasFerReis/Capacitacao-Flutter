import 'dart:convert';

class UserModel {
    final int id;
    final String nome;
    final String email;
    final String senha;

    UserModel({this.id = 0, this.nome = "", this.email = "", this.senha = ""});

    factory UserModel.fromJson(Map json) {
        return UserModel(
            id: json["id"], 
            nome: json["nome"], 
            email: json["email"], 
            senha: json["senha"],
        );
    }

    String toJson(){
        return jsonEncode({
            "id": id, 
            "nome": nome, 
            "email": email, 
            "senha": senha
        });
    }

    UserModel copyWith({int? id, String? nome, String? email, String? senha}) {
        return UserModel(
            id: id ?? this.id,
            nome: nome ?? this.nome,
            email: email ?? this.email,
            senha: senha ?? this.senha,
        );    
    }

    @override
    String toString() {
        return "id: $id\nnome: $nome\nemail: $email\nsenha: $senha";
    }
}