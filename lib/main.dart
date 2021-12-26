import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pemesanan/pages/item_page.dart';
import 'package:pemesanan/screen/login_page.dart';


Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp app = await Firebase.initializeApp();
  runApp(Penyewaan( app:app));
}

class Penyewaan extends StatelessWidget {
  final FirebaseApp app;

  Penyewaan({this.app});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Master Adventure",
      home: LoginPage(),
      routes: {
        '/item':(context) => ItemPage(),
      }
    );
  }
}

