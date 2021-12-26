class CartModel{
  String key, name, price, stok;

  int qty;
  double totalPrice;

  CartModel(
    {
      this.key,
      this.name,
      this.price,
      this.stok,
      this.qty,
      this.totalPrice,
    });
    CartModel.fromJson(Map<String,dynamic> json)
    {
      key = json['key'];
      name = json ['name'];
      price = json['price'].toString();
      stok = json ['stok'];
      qty = json['qty'] as int;
      totalPrice = double.parse(json['totalprice'].toString());
    }

    Map<String,dynamic>  toJson(){
      final Map<String,dynamic> data = new Map<String,dynamic>();
      data['key'] = this.key;
      data['name'] = this.name;
      data['price'] = this.price.toString();
      data['stok'] = this.stok;
      data['qty'] = this.qty;
      data['totalprice'] = this.totalPrice;

      return data;
    }
}