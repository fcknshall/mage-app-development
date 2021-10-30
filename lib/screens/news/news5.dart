import 'package:flutter/material.dart';
import 'package:quarantips/widgets/widgets.dart';
class news5 extends StatefulWidget {
  

  @override
  _news5State createState() => _news5State();
}

class _news5State extends State<news5> {
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
          'Isolasi Mandiri di Rumah saat Covid-19, Begini Caranya Menurut Dokter',
          style: const TextStyle(
            color: Colors.white,
            fontFamily: "KanitLight",
            fontSize: 24.0,
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
                    Image.asset('assets/images/news5.jpg', width: 300,),
                    
                  ],
                ),
              ),
               Container(
                width: 350,
                height: 800,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                
                ),
                child: Text(
"KOMPAS.com - Isolasi mandiri di rumah dapat dilakukan orang dengan hasil tes positif Covid-19 tanpa gejala atau bergejala ringan. \nPerlu diketahui, gejala Covid-19 ringan di antaranya demam, batuk, mudah lelah, napas jadi pendek-pendek, nyeri otot, sakit tenggorokan, hidung tersumbat, sakit kepala, diare, mual, muntah, hidung tidak bisa mencium bau (anosmia), atau lidah tidak bisa merasakan rasa (ageusia). Isolasi mandiri sangat penting untuk memutus mata rantai penularan virus corona. Sebelum menyimak cara isolasi mandiri di rumah, simak penjelasan siapa saja yang boleh melakukan isolasi mandiri di rumah.\n\nDr. dr. Erlina Burhan, M.Sc, SpP(K) membagikan cara isolasi mandiri di rumah bagi pengidap Covid-19 dan orang yang tinggal serumah. Untuk pasien Covid-19, berikut apa saja yang perlu dilakukan ketika isolasi mandiri di rumah:\n\n- Buka jendela kamar agar cahaya matahari bisa masuk dan ada sirkulasi udara \n- Berjemur selama 10-15 menit antara jam 10.00 pagi sampai jam 1 siang. \n- Gunakan masker saat bertemu keluarga atau orang yang tinggal serumah \n- Rutin cuci tangan dengan air mengalir dan sabun, atau gunakan hand sanitizer \n- Olahraga ringan rutin sebanyak 3-5 kali seminggu \n- Makan bergizi seimbang tiga kali sehari secara terpisah dari orang yang tinggal serumah"  ,              
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