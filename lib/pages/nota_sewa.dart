import 'package:flutter/material.dart';
import 'package:pemesanan/config/pallete.dart';

class NotaSewa extends StatefulWidget {
  @override
  _NotaSewaState createState() => _NotaSewaState();
}

class _NotaSewaState extends State<NotaSewa> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        title: Text(
          'Nota Sewa',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          height: 600,
          width: 300,
          color: Colors.blue[200],
          child: Column(
            children: [
              Text(
                '=========================',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              Text(
                'Detail Penyewaan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                '=========================',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'Tanggal Sewa : ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                  Expanded(
                      child: Text('12/24/2021',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                      child: Text('Tanngal Kembali : ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                  Expanded(
                      child: Text(
                    '12/27/2021',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Text(
                    '-------------------------------------',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    'List Barang Yang Disewa',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    '-------------------------------------',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        'Nama Barang ',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        width: 30,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Text(
                        'Qty',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Text(
                        'Harga',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                        'Tenda Pavillo',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Text(
                        '2',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Text(
                        'Rp 50000',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                        'Sleeping Bag',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Text(
                        '5',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Text(
                        'Rp 45000',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                        'Tas Carrier 35-60L',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Text(
                        '3',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      )),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Text(
                        'Rp 45000',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                        )
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Text(
                    '-------------------------------------',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                        child: Text(
                        'Total ',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                        child: Text(
                        'Rp 420000',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                        )
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
