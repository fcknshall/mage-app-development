import 'package:flutter/material.dart';
import 'package:quarantips/widgets/widgets.dart';
class news4 extends StatefulWidget {
  

  @override
  _news4State createState() => _news4State();
}

class _news4State extends State<news4> {
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
          'Protokol Isolasi Mandiri\nCovid 19 Kemenkes RI',
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
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/news4.PNG', width: 330,),
                    
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
                  "Oleh : P2PTM Kemenkes RI\n\nSelalu memakai masker dan membuang masker bekas  di tempat yang ditentukan\n- Jika sakit (ada gejala demam, flu dan batuk), maka tetap di rumah. Jangan pergi bekerja, sekolah, ke pasar atau ke ruang publik untuk mencegah penularan masyarakat\n- Manfaatkan fasilitas telemedicine atau sosial media kesehatan dan hindari transportasi publik. Beritahu dokter dan perawat tentang keluhan dan gejala, serta riwayat bekerja ke daerah terjangkit atau kontak dengan pasien COVID-19\n- Selama di rumah, bisa bekerja di rumah. Gunakan kamar terpisah dari anggota keluarga lainnya, dan jaga jarak 1 meter dari anggota keluarga\n- Tentukan pengecekan suhu harian, amati batuk dan sesak nafas. Hindari pemakaian bersama peralatan makan dan mandi dan tempat tidur.\n- Terapkan perilaku hidup sehat dan bersih, serta konsumsi makanan bergizi, mencuci tangan dengan sabun dan air mengalir dan lakukan etika batuk dan bersin.\n- Jaga kebersihan dan kesehatan rumah dengan cairan desinfektan. Selalu berada di ruang terbuka dan berjemur di bawah sinar matahari setiap pagi (±15-30 menit)\n- Hubungi segera fasilitas pelayanan kesehatan jika sakit berlanjut seperti sesak nafas dan demam tinggi, untuk mendapatkan perawatan lebih lanjut.  ",
                
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