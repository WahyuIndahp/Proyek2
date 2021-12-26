import 'dart:convert';
import 'package:badges/badges.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pemesanan/config/pallete.dart';
import 'package:pemesanan/models/barangModel.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:pemesanan/models/cartModel.dart';
import 'package:pemesanan/pages/cart_action.dart';
import 'package:pemesanan/pages/cart_detail.dart';

class Sewa extends StatefulWidget {
  Sewa({Key key, this.title, this.app}) : super(key: key);

  final FirebaseApp app;
  final String title;
  @override
  _SewaState createState() => _SewaState();
}

class _SewaState extends State<Sewa> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  List<BarangModel> barangModels = new List<BarangModel>.empty(growable: true);
  List<CartModel> cartModels = new List<CartModel>.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text("Sewa Barang"),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 5, right: 50),
            child: StreamBuilder(
              stream: FirebaseDatabase.instance.reference().child('Cart').child('UNIQUE_USER_ID').onValue, 
              builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot){
                if(snapshot.hasData)
                {
                  Map<dynamic,dynamic> map = snapshot.data.snapshot.value;
                  cartModels.clear();
                  if(map != null){
                    map.forEach((key, value) {
                      var cartModel = CartModel.fromJson(json.decode(json.encode(value)));
                      cartModel.key = key;
                      cartModels.add(cartModel);
                    });
                  }
                  
                  var numberItemInCart = cartModels.map<int>((m)=> m.qty).reduce((b1, b2) => b1+b2);
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartDetail()),
                        );
                    },
                    child: Center(
                      child: Badge(
                        showBadge: true,
                        badgeContent: Text('${numberItemInCart > 9 ? 9.toString() + "+" : numberItemInCart.toString()}', style: TextStyle(color: Colors.black),),
                        child: Icon(Icons.shopping_cart, color: Colors.white,),
                      ),
                    ),
                  );
                } else
                  return Center(
                    child: Badge(
                      showBadge: true,
                      badgeContent: Text('0', style: TextStyle(color: Colors.white),),
                      child: Icon(Icons.shopping_cart, color: Colors.blue,),
                    ),
                  );
              },
            ),
          ),
        ],
      ),
      backgroundColor: Pallete.backgroundColor,
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
              child: StreamBuilder(
            stream:
                FirebaseDatabase.instance.reference().child('Barang').onValue,
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                var map = snapshot.data.snapshot.value as Map<dynamic, dynamic>;
                barangModels.clear();
                map.forEach((key, value) {
                  var barangModel =
                      new BarangModel.fromJson(json.decode(json.encode(value)));
                  barangModel.key = key;
                  barangModels.add(barangModel);
                });

                return StaggeredGridView.countBuilder(
                    crossAxisCount: 2,
                    itemCount: barangModels.length,
                    padding: EdgeInsets.all(2.0),
                    mainAxisSpacing: 2.0,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        child: GestureDetector(
                          onTap: () {
                            addToCart(_scaffoldKey, barangModels[index]);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(15),
                            child: Card(
                              color: Colors.blue[200],
                              elevation: 8,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    child: Text('${barangModels[index].name}', 
                                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold), textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    child: Text('${barangModels[index].price}',
                                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    child: Text('Stok : ${barangModels[index].stok}',
                                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    staggeredTileBuilder: (int index) =>
                        StaggeredTile.count(1, index.isEven ? 1.1 : 1.0));
              } else
                return Center(
                  child: CircularProgressIndicator(),
                );
            },
          )),
        ],
      ),
    );
  }
}


