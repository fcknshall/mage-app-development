import 'package:flutter/material.dart';
import 'package:quarantips/widgets/widgets.dart';
class zaxis extends StatefulWidget {
  

  @override
  _zaxisState createState() => _zaxisState();
}

class _zaxisState extends State<zaxis> {
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
           'Apa itu Z-Axis Inc. ? ',
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
                    Image.asset('assets/images/smk.jpg', width: 300,),
                    
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
"Z-axis Inc. adalah Tim Developer dari Aplikasi Quarantips yang berasal dari SMK PRESTASI PRIMA. Beranggota kan 3 Orang yaitu Muhammad Faishal B, Axltavi Deus, dan Muhammad Naufal F. Pembuatan Aplikasi Quarantips ini sangat di pikirkan dengan matang oleh kami, menyesuaikan kebutuhan Masyarakat dengan waktu yang cukup singkat menurut kami. Dengan Pembagian tugas yang Efektif dan sikap saling bantu. Akhirnya, Aplikasi ini dapat di selesaikan dalam bentuk Prototype.\n\nEnjoy the App and Stay Healthy Fellas!\n\n\n\n\nHormat kami.\n\nZ - Axis Inc.",    
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