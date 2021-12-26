import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:pemesanan/config/pallete.dart';

class InfoToko extends StatefulWidget {
  @override
  _InfoTokoState createState() => _InfoTokoState();
}

class _InfoTokoState extends State<InfoToko>{

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Pallete.backgroundColor,
        appBar: AppBar(
          title: Text('Info Toko', 
            style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Syarat Sewa', icon: Icon(Icons.list)),
              Tab(text: 'Alamat Toko', icon: Icon(Icons.map)),
            ],
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: TabBarView(
            children: [
              Center(
                child: Image.asset("images/syarat.png", fit: BoxFit.cover,),
              ),
              Container(
                margin: EdgeInsets.all(20),
                child: Center(
                  child: LaunchButton('Alamat Toko', () async {
                    await openUrl("https://www.google.com/maps/dir//master+adventure+lamongan/data=!4m6!4m5!1m1!4e2!1m2!1m1!1s0x2e77f7792ed56517:0x74cc21af385ca6b9?sa=X&ved=2ahUKEwiH-MLpnJ70AhXFX30KHV3OCqIQ9Rd6BAhIEAM");
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class LaunchButton extends StatelessWidget {
  final String text;
  final Function onTap;

  LaunchButton(this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: RaisedButton(
        child: Text(text, style: TextStyle(color: Colors.white,)),
        onPressed: onTap,
        color: Colors.blue,
      ),
    );
  }
}

Future<void> openUrl(String url, {bool forceWebView = false, bool enableJavaScript = false}) async{
  await launch(url);
}