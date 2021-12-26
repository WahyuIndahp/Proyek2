import 'package:flutter/material.dart';
import 'package:pemesanan/config/pallete.dart';
import 'package:pemesanan/models/items.dart';
import 'package:pemesanan/widgets/deskripsi_alat.dart';
import 'package:pemesanan/widgets/imgAlat.dart';


class ItemPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    final Item itemArgs = ModalRoute.of(context).settings.arguments; 
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        title: Text('Item Page',style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue[500],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue[200], Colors.blue[400]],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
          borderRadius: BorderRadius.circular(20)
        ),
        margin: EdgeInsets.all(15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImgAlat(itemArgs: itemArgs),
              Deskripsi(itemArgs: itemArgs),
            ],
          ),
        ),
      ),
    );
    //throw UnimplementedError();
  }
}





