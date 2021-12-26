import 'package:flutter/material.dart';
import 'package:pemesanan/config/pallete.dart';
import 'package:pemesanan/screen/homepage_admin.dart';
import 'package:pemesanan/screen/homepage_penyewa.dart';

class Beranda extends StatefulWidget {

  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda>{

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
                                    MaterialPageRoute(builder: (context) => Homepage()),
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)
                                  )
                                ),
                                label: Text('Homepage \nAdmin',
                                  style: TextStyle(color: Colors.white),
                                ),
                                icon: Icon(Icons.home, color:Colors.black,),
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
                                    MaterialPageRoute(builder: (context) => HomepageMbr()),
                                  );
                                },
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10.0)
                                  )
                                ),
                                label: Text('Homepage \nPenyewa',
                                  style: TextStyle(color: Colors.white),
                                ),
                                icon: Icon(Icons.home, color:Colors.black,),
                                textColor: Colors.white,
                                splashColor: Colors.black,
                                color: Colors.blue[600],
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