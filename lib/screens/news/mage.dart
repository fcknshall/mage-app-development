import 'package:flutter/material.dart';
import 'package:quarantips/widgets/widgets.dart';
class mage extends StatefulWidget {
  

  @override
  _mageState createState() => _mageState();
}

class _mageState extends State<mage> {
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
          'Apa itu MAGE 7 ITS ? ',
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
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Image.asset('assets/images/mage1.jpg',),
                    
                  ],
                ),
              ),
               Container(
                width: 350,
                height: 550,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                
                ),
                child: Text(
"What is MAGE?\nMAGE (Multimedia and Game Event) adalah Wadah bagi generasi muda dalam berkreasi, berekspresi, dan berkompetisi untuk menuangkan inovasi sekaligus menyelesaikan permasalahan dengan memanfaatkan berbagai macam teknologi melalui serangkaian kegiatan seperti Development Competition (Apps, IoT, Games), Olimpiade, Workshop, dan Webinar.\n\nApplication Competition merupakan cabang kompetisi dari MAGE 7, yaitu pembuatan aplikasi mobile yang berskala nasional sebagai media bagi peserta baik pelajar maupun mahasiswa untuk mengeksplorasi kreativitas dan inovasi dalam bidang IT. Application Competition ini sebagai bentuk kesadaran bahwa dengan adanya berbagai macam teknologi yang tersedia, masyarakat dapat dengan mudah mengeksplorasi teknologi, khususnya di bidang teknologi dan informasi untuk terciptanya bangsa yang lebih maju di kemudian hari.",
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