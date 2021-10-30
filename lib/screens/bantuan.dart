import 'package:flutter/material.dart';
import 'package:quarantips/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
import 'rumahsakit.dart';
import 'dokter.dart';


class bantuan extends StatefulWidget {
  const bantuan({Key? key}) : super(key: key);

  @override
  _bantuanState createState() => _bantuanState();
}

class _bantuanState extends State<bantuan> {
  @override
  Widget build(BuildContext context) {
    final nomor = "119";
    return Scaffold(
      appBar:CustomAppBar(),
       
      body:
      Container( 
        margin: EdgeInsets.all(20),
        child : Column (
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
Text("PUSAT BANTUAN\n",
            style: TextStyle(
              fontFamily: 'Kanit',
              fontSize: 34,
              color: Color.fromRGBO(227, 248, 251, 1),
            ),)

      ],),
       Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
Text("Jika Anda mengalami gejala Covid, Maka Silahkan \nhubungi kontak di bawah",
textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'KanitLight',
              fontSize: 16,
              color: Color.fromRGBO(227, 248, 251, 1),
            ),)

      ],),

GestureDetector(
  
  onTap: () async {
  launch('tel:$nomor');

}, 
child:
      Container(
        width: 350,
        height: 55,
        margin: EdgeInsets.fromLTRB(10,60,10,20),
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
        ),
        child: Image.asset("assets/images/call.png"),
      ),
),
      Row(
        mainAxisAlignment : MainAxisAlignment.start,
      children: [
        GestureDetector(
        child: Container(
        width: 260,
        height: 55,
        margin: EdgeInsets.fromLTRB(10,20,10,20),
        padding: EdgeInsets.fromLTRB(15, 0, 30, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
        ),
        child: Image.asset("assets/images/chat.png"),
      ),
      onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>  dokter()),), 
        ),
      ],
      ),
      Row(
        mainAxisAlignment : MainAxisAlignment.start,
      children: [
        GestureDetector(
        child : Container(
        width: 260,
        height: 55,
        margin: EdgeInsets.fromLTRB(10,20,10,20),
        padding: EdgeInsets.fromLTRB(15, 0, 50, 0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25)
        ),
        child: Image.asset("assets/images/rumah sakit.png"),
      ),
      onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>  rumahsakit()),), 
        ),
      ],
      ),
     
          ],
        ),
      ),
       
    );
  }
}


