import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:pemesanan/models/barangModel.dart';
import 'package:pemesanan/models/cartModel.dart';

void addToCart(GlobalKey<ScaffoldState> scaffoldKey, BarangModel barangModel) {
    var cart = FirebaseDatabase.instance
        .reference()
        .child('Cart')
        .child('UNIQUE_USER_ID');
    cart.child(barangModel.key).once().then((DataSnapshot snapshot){
      if(snapshot.value != null)
      {
        var cartModel = CartModel.fromJson(json.decode(json.encode(snapshot.value)));
        cartModel.qty +=1;
        cartModel.totalPrice = double.parse(barangModel.price) * cartModel.qty;
        
        cart.child(barangModel.key).set(cartModel.toJson()).then((value) => 
        ScaffoldMessenger.of(scaffoldKey.currentContext)
        .showSnackBar(SnackBar(content: Text('Update Successfully'))))
        .catchError((e) => ScaffoldMessenger.of(scaffoldKey.currentContext)
        .showSnackBar(SnackBar(content: Text('$e'))));
      } else {
        CartModel cartModel = new CartModel(
          key : barangModel.key,
          name : barangModel.name,
          price: barangModel.price,
          stok : barangModel.stok,
          qty : 1,
          totalPrice :double.parse(barangModel.price),
        );
        cart.child(barangModel.key).set(cartModel.toJson()).then((value) => 
        ScaffoldMessenger.of(scaffoldKey.currentContext)
        .showSnackBar(SnackBar(content: Text('Add to Cart Successfully'))))
        .catchError((e) => ScaffoldMessenger.of(scaffoldKey.currentContext)
        .showSnackBar(SnackBar(content: Text('$e'))));
      }
    });
  }

void updateToCart(GlobalKey<ScaffoldState> scaffoldKey, CartModel cartModel) {
    var cart = FirebaseDatabase.instance
        .reference()
        .child('Cart')
        .child('UNIQUE_USER_ID');
    cart.child(cartModel.key).set(cartModel.toJson()).then((value) => 
        ScaffoldMessenger.of(scaffoldKey.currentContext)
        .showSnackBar(SnackBar(content: Text('Increase item Successfully'))))
        .catchError((e) => ScaffoldMessenger.of(scaffoldKey.currentContext)
        .showSnackBar(SnackBar(content: Text('$e'))));
  }

void deleteToCart(GlobalKey<ScaffoldState> scaffoldKey, CartModel cartModel) {
    var cart = FirebaseDatabase.instance
        .reference()
        .child('Cart')
        .child('UNIQUE_USER_ID');
    cart.child(cartModel.key).remove()
      .then((value) => ScaffoldMessenger.of(scaffoldKey.currentContext)
        .showSnackBar(SnackBar(content: Text('Delete item Successfully'))))
        .catchError((e) => ScaffoldMessenger.of(scaffoldKey.currentContext)
        .showSnackBar(SnackBar(content: Text('$e'))));
  }