import 'package:flutter/material.dart';
import 'package:pemesanan/models/items.dart';

class ItemAlat extends StatelessWidget {
  const ItemAlat({
    Key key,
    @required this.itemArgs,
  }) : super(key: key);

  final Item itemArgs;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: [
          Expanded(child:
            Text("Name : \n${itemArgs.name}",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}