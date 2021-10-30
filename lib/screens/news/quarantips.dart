import 'package:flutter/material.dart';
import 'package:quarantips/widgets/widgets.dart';
class quarantips extends StatefulWidget {
  

  @override
  _quarantipsState createState() => _quarantipsState();
}

class _quarantipsState extends State<quarantips> {
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
        child: Text(
          'Apa itu Quarantips ? ',
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "Kanit",
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

      SliverToBoxAdapter _news(){
        return SliverToBoxAdapter(
          child: Column(
            children: [
              Container(
                width: 350,
                height: 200,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all( 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Image.asset('assets/images/qua.png', width: 300,),
                    
                  ],
                ),
              ),
               Container(
                width: 350,
                height: 500,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                
                ),
                child: Text(
                  "Quarantips merupakan Aplikasi berbasis Android yang di tujukan untuk membantu Indonesia dalam mengurangi Angka Kematian di masa Karantina Mandiri. Ide muncul ketika kami sadar bahwa banyaknya kasus Masyarakat yang gagal dalam menjalankan Isoman dan meninggal dunia. Data kasus kematian Covid yang kian meningkat terus menyerang Indonesia.\n\nIde juga muncul karena banyaknya keluhan dari masyarakat bahkan orang terdekat di sekitar kami. Banyaknya keluhan tentang sulit nya mendapatkan informasi tentang tata cara Isoman yang baik dan benar, merasa bosan ketika melakukan Isoman, dan tidak menjaga pola hidup agar tetap fit saat Isoman, Hadirnya Quarantips inilah untuk membantu orang orang dalam menjalankan karantina / Isoman.\n\nAdanya Quarantips ini pun pasti berdampak pada Angka Kematian Covid di Indonesia terlebih Kematian pada Masa Isoman yang tergolong tidak sedikit. Semoga Indonesia lekas membaik dan Semoga Aplikasi ini dapat berguna untuk Bangsa yang kita Cintai ini.",
            textAlign: TextAlign.justify,
                style: TextStyle(
                      fontFamily: "KanitLight",
                      fontSize: 14,
                ),
                ),
              ),
            ],
          ),);

      }



       
    
    
  
}