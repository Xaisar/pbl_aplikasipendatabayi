class Bidan {
  String? id;
  String? nama;
  String? nip;
  String? idPosyandu;

  Bidan({this.id, this.nama, this.nip, this.idPosyandu});

  Bidan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    nip = json['nip'];
    idPosyandu = json['id_posyandu'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['nip'] = nip;
    data['id_posyandu'] = idPosyandu;
    return data;
  }
}
