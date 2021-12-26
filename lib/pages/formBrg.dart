import 'package:flutter/material.dart';
import 'package:pemesanan/config/pallete.dart';
import 'package:pemesanan/models/itembrg.dart';

class FormBrg extends StatefulWidget {
  final Itembrg itembrg;
  FormBrg(this.itembrg);

  @override
  _FormBrgState createState() => _FormBrgState(this.itembrg);
}

class _FormBrgState extends State<FormBrg> {
  Itembrg itembrg;
  _FormBrgState(this.itembrg);

  TextEditingController namaController = TextEditingController();
  TextEditingController hargaController = TextEditingController();
  TextEditingController stokController = TextEditingController();
  TextEditingController deskripsiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    if(itembrg != null){
      namaController.text = itembrg.nama;
      hargaController.text = itembrg.harga.toString();
      stokController.text = itembrg.stok.toString();
      deskripsiController.text = itembrg.deskripsi;
    }
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: itembrg == null ? Text('Tambah Data') : Text('Edit Data'),
        leading: Icon(Icons.keyboard_arrow_left),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 5.0, left: 5.0, right: 5.0),
        child: ListView(
          children:<Widget> [
            Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: TextField(
                controller: namaController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nama Barang',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onChanged: (value){},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: TextField(
                controller: hargaController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Harga Sewa',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onChanged: (value){},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: TextField(
                controller: stokController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Stok Barang',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onChanged: (value){},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
              child: TextField(
                maxLines: 15,
                controller: deskripsiController,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Deskripsi Barang',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                onChanged: (value){},
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top:20.0, bottom:20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      color: Colors.blue[700],
                      textColor: Colors.white,
                      child: Text('Save',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      onPressed: (){
                        if(itembrg == null){
                        itembrg = Itembrg(namaController.text, int.parse(hargaController.text), int.parse(stokController.text), deskripsiController.text);
                        }else{
                          itembrg.nama = namaController.text;
                          itembrg.harga = int.parse(hargaController.text);
                          itembrg.stok = int.parse(stokController.text);
                          itembrg.deskripsi = deskripsiController.text;
                        }
                        Navigator.pop(context, itembrg);
                      },
                    ),
                  ),
                  Container(width: 5.0,),
                  Expanded(
                    child: RaisedButton(
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text('Cancel',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}