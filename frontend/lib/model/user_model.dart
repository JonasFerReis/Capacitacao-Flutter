class UserModel {
    final int id;
    final String nome;
    final String email;
    final String senha;

    UserModel(this.id, this.nome, this.email, this.senha);

    factory UserModel.fromJson(Map json) {
        return UserModel(json["id"], json["nome"], json["email"], json["senha"]);
    }
}