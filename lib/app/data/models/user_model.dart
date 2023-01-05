class User {
  String? username;
  String? password;
  int? idPengguna;
  bool? auth;
  String? error;

  User({this.username, this.password, this.idPengguna, this.auth, this.error});

  fromJson(Map<String, dynamic> json) {
    idPengguna = json['id'];
    auth = json['auth'];
    error = json['pesan'].toString();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['username'] = username;
    data['password'] = password;
    data['id_pengguna'] = idPengguna;
    return data;
  }
}
