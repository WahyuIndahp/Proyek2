import 'package:flutter/material.dart';
import 'package:pemesanan/models/items.dart';

class Deskripsi extends StatelessWidget {
  const Deskripsi({
    Key key,
    @required this.itemArgs,
  }) : super(key: key);

  final Item itemArgs;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      child: Text('DESKRIPSI: ' + '\n\n' + "${itemArgs.desc}",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white), 
      textAlign: TextAlign.justify,
      ),
    );
  }
}