
class BarangModel{
  String key, name, price, stok;

  BarangModel ({this.key, this.name, this.price, this.stok});

  BarangModel.fromJson(Map<String,dynamic> json)
  {
    key = json['key'];
    name = json ['name'];
    price = json['price'];
    stok = json ['stok'];
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = new Map<String,dynamic>();
    data['key'] = this.key;
    data['name'] = this.name;
    data['price'] = this.price;
    data['stok'] = this.stok;

    return data;
  }
}