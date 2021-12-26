import 'package:flutter/material.dart';
import 'package:pemesanan/models/items.dart';

class ListAlat extends StatelessWidget {
  const ListAlat({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
        Expanded(
          child: Text(item.name,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
          ),
        ),
        ],
      ),
    );
  }
}
