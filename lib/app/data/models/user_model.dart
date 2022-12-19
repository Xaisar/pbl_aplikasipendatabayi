class User {
  String? username;
  String? password;
  String? idPengguna;

  User({this.username, this.password, this.idPengguna});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    password = json['password'];
    idPengguna = json['id_pengguna'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['username'] = username;
    data['password'] = password;
    data['id_pengguna'] = idPengguna;
    return data;
  }
}
