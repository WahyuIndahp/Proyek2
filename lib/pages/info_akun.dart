import 'package:flutter/material.dart';
import 'package:pemesanan/config/pallete.dart';
import 'package:pemesanan/screen/sign_in.dart';
import 'package:pemesanan/screen/login_page.dart';

class InfoAkun extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Pallete.backgroundColor,
      appBar: AppBar(
        title: Text('Info Akun', 
          style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.blue[200],
                    radius: 80,
                    backgroundImage: AssetImage("images/profil.png"),
                  ),
                  Padding(padding: EdgeInsets.all(15),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan Nama",
                      hintStyle: TextStyle(color: Colors.blue),
                      suffixIcon: Icon(Icons.edit, color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan NIK",
                      hintStyle: TextStyle(color: Colors.blue),
                      suffixIcon: Icon(Icons.edit, color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan No Hp",
                      hintStyle: TextStyle(color: Colors.blue),
                      suffixIcon: Icon(Icons.edit, color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan Alamat",
                      hintStyle: TextStyle(color: Colors.blue),
                      suffixIcon: Icon(Icons.edit, color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Masukkan Email",
                      hintStyle: TextStyle(color: Colors.blue),
                      suffixIcon: Icon(Icons.edit, color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}