import 'package:flutter/material.dart';
import 'package:pemesanan/models/items.dart';
import 'package:pemesanan/widgets/listAlat.dart';

class ListviewAlat extends StatelessWidget {
  const ListviewAlat({
    Key key,
    @required this.items,
  }) : super(key: key);

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: items.length,
      itemBuilder: (context, index){
        final item = items[index];
        return InkWell(
          onTap: (){
            Navigator.pushNamed(context, '/item', arguments: item);
          },
          child: Card(
            color: Colors.blue[600],
            child: Container(
              margin: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListAlat(item: item),
                  Text("Klik untuk detail alat",
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}