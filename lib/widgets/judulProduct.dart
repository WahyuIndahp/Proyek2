import 'package:flutter/material.dart';

class JudulProduct extends StatelessWidget {
  const JudulProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      Expanded(
        child: Text('Name', 
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
          ),
        ),
      Expanded(
        child: Text(
          'Qty(kg)',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ),
      Expanded(
        child: 
        Text(
          'Price',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 16),
          textAlign: TextAlign.end,
          ),
        )
      ],
    );
  }
}