import 'package:flutter/material.dart';
import 'package:pemesanan/config/pallete.dart';
import 'package:pemesanan/pages/DataBrg.dart';
import 'package:pemesanan/pages/crudBrg.dart';
import 'package:pemesanan/pages/info_akun.dart';
import 'package:pemesanan/pages/info_toko.dart';
import 'package:pemesanan/pages/keranjang.dart';
import 'package:pemesanan/pages/sewa.dart';
import 'package:pemesanan/screen/login_page.dart';

class HomepageMbr extends StatefulWidget {

  @override
  _HomepageMbrState createState() => _HomepageMbrState();
}

class _HomepageMbrState extends State<HomepageMbr>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      body: Container(
        child: Column(
          children: <Widget> [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue[700], Colors.blue[300]],
                  end: Alignment.centerLeft,
                  begin: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100)),
              ),
              child: Center(
                child: Image.asset("images/logo.png", height: 220, width: 220,),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 40),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.lightBlue[100],
                                    offset: Offset(1, 2),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                              child: RaisedButton.icon(
                                onPressed: (){
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => CrudDataBarang()),
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)
                                  )
                                ),
                                label: Text('Informasi Alat',
                                  style: TextStyle(color: Colors.white),
                                ),
                                icon: Icon(Icons.view_list, color:Colors.black,),
                                textColor: Colors.white,
                                splashColor: Colors.black,
                                color: Colors.blue[600],
                              ),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.lightBlue[100],
                                    offset: Offset(1, 2),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                              child: RaisedButton.icon(
                                onPressed: (){
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => Sewa()),
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)
                                  )
                                ),
                                label: Text('Sewa Alat',
                                  style: TextStyle(color: Colors.white),
                                ),
                                icon: Icon(Icons.shopping_cart, color:Colors.black,),
                                textColor: Colors.white,
                                splashColor: Colors.black,
                                color: Colors.blue[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.lightBlue[100],
                                    offset: Offset(1, 2),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                              child: RaisedButton.icon(
                                onPressed: (){
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => InfoToko()),
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)
                                  )
                                ),
                                label: Text('Info Toko',
                                  style: TextStyle(color: Colors.white),
                                ),
                                icon: Icon(Icons.store, color:Colors.black,),
                                textColor: Colors.white,
                                splashColor: Colors.black,
                                color: Colors.blue[600],
                              ),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.lightBlue[100],
                                    offset: Offset(1, 2),
                                    blurRadius: 15,
                                  ),
                                ],
                              ),
                              child: RaisedButton.icon(
                                onPressed: (){
                                  Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => LoginPage()),
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)
                                  )
                                ),
                                label: Text('LOGOUT',
                                  style: TextStyle(color: Colors.white),
                                ),
                                icon: Icon(Icons.logout, color:Colors.black,),
                                textColor: Colors.white,
                                splashColor: Colors.black,
                                color: Colors.cyan,
                              ),
                            ),
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
      )
    );
  }
}