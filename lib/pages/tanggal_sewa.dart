import 'package:flutter/material.dart';
import 'package:pemesanan/config/pallete.dart';
import 'package:pemesanan/pages/button_widget.dart';
import 'package:intl/intl.dart';
import 'package:pemesanan/pages/nota_sewa.dart';

class TanggalSewa extends StatefulWidget {

  @override
  _TanggalSewaState createState() => _TanggalSewaState();
}

class _TanggalSewaState extends State<TanggalSewa>{
DateTimeRange dateRange;

String getFrom() {
  if (dateRange == null) {
    return 'Tanggal Sewa';
  } else {
    return DateFormat('MM/dd/yyyy').format(dateRange.start);
  }
}

String getUntil() {
  if (dateRange == null) {
    return 'Tanggal Kembali';
  } else {
    return DateFormat('MM/dd/yyyy').format(dateRange.end);
  }
}

@override
Widget build(BuildContext context){
  return Scaffold(
    backgroundColor: Pallete.backgroundColor,
    appBar: AppBar(
      title: Text('Tanggal Sewa', 
        style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
    body: Container(
      padding: EdgeInsets.only(top: 70, bottom: 20, left: 20, right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Text('Tanggal Sewa',
                style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(width: 17),
              const SizedBox(width: 17),
              Expanded(
                child: Text('Tanggal Kembali',
                style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Expanded(
                child: ButtonWidget(
                  text: getFrom(),
                  onClicked: () => pickDateRange(context),
                ),
              ),
              const SizedBox(width: 8),
              Icon(Icons.arrow_forward, color: Colors.black),
              const SizedBox(width: 8),
              Expanded(
                child: ButtonWidget(
                  text: getUntil(),
                  onClicked: () => pickDateRange(context),
                ),
              ),
            ],
          ),
          SizedBox(height: 30,),
          RaisedButton(
            onPressed: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => NotaSewa()),
              );
            },
            color: Colors.black,
            child: Text('Check out', style: TextStyle(fontSize: 20, color: Colors.white),),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40)
            ),
          ),
        ],
      ),
    ),
  );
}
  Future pickDateRange(BuildContext context) async {
  final initialDateRange = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now().add(Duration(days: 30)),
  );
  final newDateRange = await showDateRangePicker(
    context: context,
    firstDate: DateTime(DateTime.now().year - 5),
    lastDate: DateTime(DateTime.now().year + 5),
    initialDateRange: dateRange ?? initialDateRange,
  );
  if (newDateRange == null) return;
    setState(() => dateRange = newDateRange);
  }
}