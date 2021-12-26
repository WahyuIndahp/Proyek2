import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_elegant_number_button/flutter_elegant_number_button.dart';
import 'package:pemesanan/config/pallete.dart';
import 'package:pemesanan/models/cartModel.dart';
import 'package:pemesanan/pages/cart_action.dart';
import 'package:pemesanan/pages/tanggal_sewa.dart';

class DetailSewa extends StatefulWidget {
  DetailSewa({ Key key }) : super(key: key);

  @override
  _DetailSewaState createState() => _DetailSewaState();
}

class _DetailSewaState extends State<DetailSewa>{
  List<CartModel> cartModels = new List<CartModel>.empty(growable: true);
  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key:  scaffoldKey,
      appBar: AppBar(
        title: Text("Detail Sewa"),
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
                            child:Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Padding(padding: EdgeInsets.only(left: 8, right: 8),
                                        child: Text(cartModels[index].name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Padding(padding: EdgeInsets.only(left: 8, right: 8),
                                        child: Text('${cartModels[index].qty}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                                        ),
                                        Padding(padding: EdgeInsets.only(left: 8, right: 8),
                                        child: Text('\Rp ${cartModels[index].price}', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
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
                      