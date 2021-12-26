import 'package:flutter/material.dart';
import 'package:pemesanan/config/pallete.dart';
import 'package:pemesanan/dbHelper/DbHelper.dart';
import 'package:pemesanan/models/itembrg.dart';

class DataBarang extends StatefulWidget {
  final Itembrg barangArgs;
  DataBarang({Key key, this.barangArgs}) : super(key: key);

  @override
  _DataBarangState createState() => _DataBarangState();
}

class _DataBarangState extends State<DataBarang> {
  DbHelper dbHelper = DbHelper();
  int count = 0;
  List<Itembrg> itembrgList;

  @override
  Widget build(BuildContext context) {
    void initState() {
      super.initState();
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Pallete.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          bottom: TabBar(
            labelColor: Colors.blue[600],
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            tabs: [
              Tab(
                child: Text(
                  "Detail Barang",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 18),
                ),
              ),
              Tab(
                child: Text(
                  "Deskripsi Barang",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                      fontSize: 18),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: TabBarView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[400],
                      ),
                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.all(25),
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Barang : ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.barangArgs.nama,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Harga Sewa : ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rp " + widget.barangArgs.harga.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Stok : ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                widget.barangArgs.stok.toString(),
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue[400],
                      ),
                      margin: EdgeInsets.all(30),
                      padding: EdgeInsets.all(25),
                      width: 300,
                      child: Column(
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  widget.barangArgs.nama,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  widget.barangArgs.deskripsi,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 17),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
