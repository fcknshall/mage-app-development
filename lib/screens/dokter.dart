import 'package:flutter/material.dart';
import 'package:quarantips/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
class dokter extends StatefulWidget {
 

  @override
  _dokterState createState() => _dokterState();
}

class _dokterState extends State<dokter> {
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
          'Data Dokter Konsultasi Covid 19\n',
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "KanitLight",
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Klik Dokter Di bawah ini untuk Konsultasi Gratis Melalui Whatsapp, Konsultasi lah dengan Sopan dan Perhatikan Jam Operasional Dokter',
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
         void launchwa({@required number, @required message})async{
String url = "whatsapp://send?phone=$number&text=$message";

await canLaunch(url) ? launch(url) : print("Cant Open Whatsapp");
  }
     
       
        return SliverToBoxAdapter(
          child: Column(
            children: [
              GestureDetector(
               
              child: Container(
                width: 350,
                height: 110,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                
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
                child: Image.asset("assets/images/Group 21.png"),
              ),
               onTap: ()   {
  launchwa(number: "+6281902835039", message: "Hai, Apakah Saya Boleh Konsultasi Kepada Anda? , Saya Terpapar Covid-19 dan sedang menalani ISOMAN");
               }
              ),
              GestureDetector(
              child: Container(
                width: 350,
                height: 110,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                
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
                child: Image.asset("assets/images/Group 22.png"),
              ),
             onTap: ()   {
  launchwa(number: "+6281212129320", message: "Hai, Apakah Saya Boleh Konsultasi Kepada Anda? , Saya Terpapar Covid-19 dan sedang menalani ISOMAN");
               }
              ),
              GestureDetector(
              child: Container(
                width: 350,
                height: 110,
             margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                
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
                child: Image.asset("assets/images/Group 23.png"),
              ),
               onTap: ()   {
  launchwa(number: "+628224251881", message: "Hai, Apakah Saya Boleh Konsultasi Kepada Anda? , Saya Terpapar Covid-19 dan sedang menalani ISOMAN");
               }
              ),
              GestureDetector(
              child: Container(
                width: 350,
                height: 110,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                
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
                child: Image.asset("assets/images/Group 24.png"),
              ),
             onTap: ()   {
  launchwa(number: "+6285391051302", message: "Hai, Apakah Saya Boleh Konsultasi Kepada Anda? , Saya Terpapar Covid-19 dan sedang menalani ISOMAN");
               }
              ),
              GestureDetector(
              child: Container(
                width: 350,
                height: 110,
               margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                
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
                child: Image.asset("assets/images/Group 25.png"),
              ),
              onTap: ()   {
  launchwa(number: "+6281359175823", message: "Hai, Apakah Saya Boleh Konsultasi Kepada Anda? , Saya Terpapar Covid-19 dan sedang menalani ISOMAN");
               }
              ),
              GestureDetector(
              child: Container(
                width: 350,
                height: 110,
                margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
                
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
                child: Image.asset("assets/images/Group 26.png"),
              ),
              onTap: ()   {
  launchwa(number: "+6281328996080", message: "Hai, Apakah Saya Boleh Konsultasi Kepada Anda? , Saya Terpapar Covid-19 dan sedang menalani ISOMAN");
               }
              ),
              
            ]
          ),
        
          );
      }

                



       
    
    
  
}