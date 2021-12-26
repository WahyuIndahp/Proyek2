import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';
import 'package:pemesanan/config/pallete.dart';
import 'package:pemesanan/models/cartModel.dart';
import 'package:pemesanan/pages/cart_action.dart';
import 'package:pemesanan/pages/tanggal_sewa.dart';

class CartDetail extends StatefulWidget {
  CartDetail({ Key key }) : super(key: key);

  @override
  _CartDetailState createState() => _CartDetailState();
}

class _CartDetailState extends State<CartDetail>{
  List<CartModel> cartModels = new List<CartModel>.empty(growable: true);
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:  scaffoldKey,
      appBar: AppBar(
        title: Text("Detail Cart"),
        actions: <Widget>[
          IconButton(icon: new Icon(Icons.date_range, color: Colors.white),
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => TanggalSewa()),
              );
            },
          ),
        ]
      ),
      backgroundColor: Pallete.backgroundColor,
        body:StreamBuilder(
          stream:
          FirebaseDatabase.instance.reference().child('Cart').child('UNIQUE_USER_ID').onValue,
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                var map = snapshot.data.snapshot.value as Map<dynamic, dynamic>;
                cartModels.clear();
                if(map != null){
                  map.forEach((key, value) {
                  var cartModel =
                    new CartModel.fromJson(json.decode(json.encode(value)));
                    cartModel.key = key;
                    cartModels.add(cartModel);
                  });
                }

                return cartModels.length > 0 ? ListView.builder(
                  itemCount: cartModels.length,
                  itemBuilder: (context,index){
                    return Stack(
                      children: [
                        Card(
                          elevation: 8,
                          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    child: Text(cartModels[index].name,  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                    borderRadius: BorderRadius.all(Radius.circular(4)),
                                  ),
                                  flex: 2,
                                ),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(padding: EdgeInsets.only(left: 8, right: 8),
                                        child: Text('\Rp ${cartModels[index].price}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Padding(padding: EdgeInsets.only(left: 8, right: 8),
                                        child: ElegantNumberButton(
                                          color: Colors.white24,
                                          initialValue: cartModels[index].qty, 
                                          buttonSizeHeight: 50,
                                          buttonSizeWidth: 65,
                                          minValue: 1, 
                                          maxValue: 99, 
                                          onChanged: (value) async {
                                            cartModels[index].qty = value;
                                            cartModels[index].totalPrice = double.parse(cartModels[index].price) * cartModels[index].qty;
                                            updateToCart(scaffoldKey, cartModels[index]);
                                          }, 
                                          decimalPlaces: 0),
                                        ),
                                        Padding(padding: EdgeInsets.only(left: 8, right: 8),
                                        child: Text('Total : \Rp ${cartModels[index].totalPrice}00 ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: IconButton(icon: Icon(Icons.clear),
                          onPressed: (){
                            deleteToCart(scaffoldKey, cartModels[index]);
                          },
                          ),
                        ),
                      ],
                    );
                  })
                  : Center(
                    child: Text('Empty Cart'),
                  );
                } else
                  return Center(
                    child: CircularProgressIndicator(),
                  );
              },
            ),
    );
  }
}
                      