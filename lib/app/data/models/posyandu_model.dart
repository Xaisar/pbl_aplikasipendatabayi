class Posyandu {
  int? id;
  String? nama;
  String? alamat;
  String? jadwal;

  Posyandu({this.id, this.nama, this.alamat, this.jadwal});

  Posyandu.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'].toString();
    alamat = json['alamat'].toString();
    jadwal = json['jadwal'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['nama'] = nama;
    data['alamat'] = alamat;
    data['jadwal'] = jadwal;
    return data;
  }
}
