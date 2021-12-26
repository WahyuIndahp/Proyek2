import 'package:flutter/material.dart';
import 'package:pemesanan/models/items.dart';

class ImgAlat extends StatelessWidget {
  const ImgAlat({
    Key key,
    @required this.itemArgs,
  }) : super(key: key);

  final Item itemArgs;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image(image: NetworkImage(
        '${itemArgs.img}'),
        fit: BoxFit.fitWidth,
      ),
      height: 200,
      width: 400,
      margin: EdgeInsets.all(8),
    );
  }
}