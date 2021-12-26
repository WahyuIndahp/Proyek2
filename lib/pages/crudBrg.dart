import 'package:flutter/material.dart';
import 'package:pemesanan/config/pallete.dart';
import 'package:pemesanan/dbHelper/DbHelper.dart';
import 'package:pemesanan/models/itembrg.dart';
import 'package:pemesanan/pages/DataBrg.dart';
import 'package:sqflite/sqflite.dart';

import 'formBrg.dart';

class CrudDataBarang extends StatefulWidget {
  @override
  _CrudDataBarangState createState() => _CrudDataBarangState();
}

class _CrudDataBarangState extends State<CrudDataBarang> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Itembrg> itembrgList;
  @override
  Widget build(BuildContext context) {
    updateListView();
    @override
    void initState() {
      super.initState();
      updateListView();
    }

    if (itembrgList == null) {
      itembrgList = List<Itembrg>();
    }
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        title: Text('Daftar Barang',
            style: TextStyle(color: Colors.white, fontSize: 18)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Expanded(
            child: createListView(),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: 200,
              child: RaisedButton(
                color: Colors.blue,
                child: Text(
                  "Tambah Barang",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                onPressed: () async {
                  var itembrg = await navigateToEntryForm(context, null);
                  if (itembrg != null) {
                    int resultbrg = await dbHelper.insertBrg(itembrg);
                    if (resultbrg > 0) {
                      updateListView();
                    }
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<Itembrg> navigateToEntryForm(
    BuildContext context, Itembrg itembrg) async {
      var resultbrg = await Navigator.push(
        context,
        MaterialPageRoute(builder: (BuildContext context) {
        //yang mana menuju class entryformhp
        return FormBrg(itembrg);
        }
      )
    );
    return resultbrg;
  }

  ListView createListView(){
    return ListView.builder(
      itemCount: count,
      itemBuilder: (BuildContext context, int index){
        final barang = itembrgList[index];

        return Card(
          color: Colors.white,
          elevation: 2.0,
          child: ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(this.itembrgList[index].nama, style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold)),
              ],
            ),
            subtitle: Text("Klik untuk detail", style: TextStyle(fontStyle: FontStyle.italic)),
            trailing: GestureDetector(
              child: PopupMenuButton(
                onSelected: (value){
                  value();
                },
                itemBuilder: (context) => [PopupMenuItem(
                  child: Row(
                    children: [
                      Text('Edit', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    ],
                  ),
                value: () async{
                  var itembrg = await navigateToEntryForm(context, this.itembrgList[index]);
                  if(itembrg != null){
                    dbHelper.updateBrg(itembrg);
                    updateListView();
                  }
                },
                ),
                PopupMenuItem(
                  child: Row(
                    children: [
                      Text('Delete', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                    ],
                  ),
                  value: () async{
                    dbHelper.deleteBrg(this.itembrgList[index].id);
                    updateListView();
                  },
                  ),
                ],
                child: Icon(Icons.more_vert),
              ),
            ),
            onTap: () async{
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => DataBarang(barangArgs: barang)),
              );
            },
          ),
        );
      },
    );
  }
  void updateListView(){
    final Future<Database> dbFuture = dbHelper.initDb();
    dbFuture.then((database) {
      Future<List<Itembrg>> itemListFuture = dbHelper.getItemBrgList();
      itemListFuture.then((itemList){
        setState(() {
          this.itembrgList = itemList;
          this.count = itemList.length;
        });
      });
    });
  }
}
