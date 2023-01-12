class Bayi {
  String? id;
  String? nama;
  int? idPosyandu;
  String? tglLahir;
  String? jenisKelamin;

  Bayi({this.id, this.nama, this.idPosyandu, this.tglLahir, this.jenisKelamin});

  Bayi.fromJson(Map<String, dynamic> json) {
    id = json['id_bayi'];
    nama = json['name_bayi'];
    idPosyandu = json['id_posyandu'];
    tglLahir = json['tgl_lahir'];
    jenisKelamin = json['jenis_kel'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['id_posyandu'] = idPosyandu;
    data['tgl_lahir'] = tglLahir;
    data['jenis_kelamin'] = jenisKelamin;
    return data;
  }
}
