import 'package:flutter/material.dart';
import 'package:quarantips/widgets/widgets.dart';
class news2 extends StatefulWidget {
  

  @override
  _news2State createState() => _news2State();
}

class _news2State extends State<news2> {
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
          'Bagaimana Covid-19\nMenyebar / Menular',
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/nular.jpg',width: 330,),
                   
                  ],
                ),
              ),
               Container(
                width: 350,
                height: 700,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                
                ),
                child: Text("Bukti saat ini menunjukkan bahwa COVID-19 menyebar antarmanusia secara langsung, tidak langsung (melalui benda atau permukaan yang terkontaminasi), atau kontak erat dengan orang yang terinfeksi melalui sekresi mulut dan hidung. Sekresi ini meliputi air liur, sekresi pernapasan, atau droplet (percikan) sekresi. Sekresi ini dikeluarkan dari mulut atau hidung misalnya ketika orang yang terinfeksi batuk, bersin, berbicara, atau bernyanyi. Orang-orang yang berada dalam jarak dekat (1 meter) dengan orang yang terinfeksi dapat terpajan COVID-19 ketika percikan infeksius masuk ke mulut, hidung atau mata mereka.\n\n Untuk menghindari kontak dengan droplet, penting untuk menjaga jarak setidaknya 1 meter dari orang lain, sering mencuci tangan, dan menutup mulut dengan tisu atau siku yang terlipat saat bersin atau batuk. Ketika menjaga jarak fisik (berdiri dengan jarak satu meter atau lebih) tidak memungkinkan, memakai masker kain adalah langkah penting untuk melindungi orang lain. Sering membersihkan tangan juga sangat penting.\n\n\n Source : https://www.who.int/indonesia/news/novel-coronavirus/qa/qa-how-is-covid-19-transmitted",
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