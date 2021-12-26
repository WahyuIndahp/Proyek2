import 'package:flutter/material.dart';
import 'package:pemesanan/config/pallete.dart';
import 'package:pemesanan/pages/tanggal_sewa.dart';

class Keranjang extends StatefulWidget {

  @override
  _KeranjangState createState() => _KeranjangState();
}

class _KeranjangState extends State<Keranjang> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        title: Text('Keranjang', 
          style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            RaisedButton(
              onPressed: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => TanggalSewa()),
                );
              },
              color: Colors.black,
              child: Text('Checkout', style: TextStyle(fontSize: 20, color: Colors.white),),
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
              ),
            ),
          ],
        ),
      ),
    );
  }
}