class Itembrg{
  int _id;
  String _nama;
  int _harga;
  int _stok;
  String _deskripsi;

  int get id => _id;

  String get nama => this._nama;
  set nama(String value) => this._nama = value;

  get harga => this._harga;
  set harga(value) => this._harga = value;

  get stok => this._stok;
  set stok(value) => this._stok = value;

  String get deskripsi => this._deskripsi;
  set deskripsi(String value) => this._deskripsi = value;

  Itembrg(this._nama, this._harga, this._stok, this._deskripsi);
  Itembrg.fromMap(Map<String, dynamic> map) {
    this._id = map['id'];
    this._nama = map['nama'];
    this._harga = map['harga'];
    this._stok = map['stok'];
    this._deskripsi = map['deskripsi'];
  }
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map['id'] = this._id;
    map['nama'] = this._nama;
    map['harga'] = this._harga;
    map['stok'] = this._stok;
    map['deskripsi'] = this._deskripsi;
    return map;
  }
}

