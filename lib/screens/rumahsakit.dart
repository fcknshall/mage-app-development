import 'package:flutter/material.dart';
import 'package:quarantips/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
class rumahsakit extends StatefulWidget {
  

  @override
  _rumahsakitState createState() => _rumahsakitState();
}

class _rumahsakitState extends State<rumahsakit> {
  @override
  Widget build(BuildContext context) {
    

    
    return Scaffold(
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(),
          _news(),
      
       ],
      ),
    );
  }
   SliverPadding _buildHeader() {
    return SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverToBoxAdapter(
        child: Column( 
          
          children: [ Text(
          'Data Rumah Sakit di Sekitar Anda\n',
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "KanitLight",
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Klik Rumah Sakit Di bawah ini untuk Menghubungi Rumah Sakit',
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "KanitLight",
            fontSize: 18.0,
            
          ),
        ),
        

        ],
        ),
      ),
    );
  }

      SliverToBoxAdapter _news(){
        final rs1 = "0218292672";
        final rs2 = "0211500135";
        final rs3 = "0212255777";
        final rs4 = "0217501524";
        final rs5 = "0214891708";
        return SliverToBoxAdapter(
          child: Column(
            children: [
              GestureDetector(
               
              child: Container(
                width: 350,
                height: 180,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(73, 97, 100, 100),
                            blurRadius: 15,
                            offset: Offset(0, 5),
                          ),
                        ]
                ),
                child: Image.asset("assets/images/rs1.png"),
              ),
               onTap: () async {
  launch('tel:$rs1');
               }
              ),
              GestureDetector(
              child: Container(
                width: 350,
                height: 180,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(73, 97, 100, 100),
                            blurRadius: 15,
                            offset: Offset(0, 5),
                          ),
                        ]
                ),
                child: Image.asset("assets/images/rs2.png"),
              ),
              onTap: () async {
  launch('tel:$rs2');
               }
              ),
              GestureDetector(
              child: Container(
                width: 350,
                height: 180,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(73, 97, 100, 100),
                            blurRadius: 15,
                            offset: Offset(0, 5),
                          ),
                        ]
                ),
                child: Image.asset("assets/images/rs3.png"),
              ),
              onTap: () async {
  launch('tel:$rs3');
               }
              ),
              GestureDetector(
              child: Container(
                width: 350,
                height: 180,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(73, 97, 100, 100),
                            blurRadius: 15,
                            offset: Offset(0, 5),
                          ),
                        ]
                ),
                child: Image.asset("assets/images/rs4.png"),
              ),
              onTap: () async {
  launch('tel:$rs4');
               }
              ),
              GestureDetector(
              child: Container(
                width: 350,
                height: 180,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(73, 97, 100, 100),
                            blurRadius: 15,
                            offset: Offset(0, 5),
                          ),
                        ]
                ),
                child: Image.asset("assets/images/rs5.png"),
              ),
              onTap: () async {
  launch('tel:$rs5');
               }
              ),
              
            ]
          ),
        
          );
      }

                



       
    
    
  
}