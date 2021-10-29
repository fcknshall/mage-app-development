import 'package:flutter/material.dart';
import 'package:quarantips/widgets/widgets.dart';
class news3 extends StatefulWidget {
  

  @override
  _news3State createState() => _news3State();
}

class _news3State extends State<news3> {
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
          'Positif COVID - 19, \nini Panduan Isolasi mandiri dari Kemenkes',
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
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset('assets/images/news3.jpg'),
                    
                  
                
              ),
               Container(
                width: 350,
                height: 1000,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                
                ),
                child: Text("KOMPAS.com - Untuk pasien kontak erat, durasi isolasi mandiri selama 14 hari sejak kontak dengan kasus Covid-19. \nNadia menambahkan, setelah masa isolasi, pasien hanya perlu melakukan kontrol ke fasilitas kesehatan dan tidak diharuskan tes PCR lagi. 'Syaratnya itu saja, tidak perlu periksa PCR,' ujarnya saat dihubungi Kompas.com, Kamis (22/7/2021).\n\nDalam Surat Edaran Nomor HK.02.01/Menkes/202/2020, disebutkan ada beberapa hal yang harus dilakukan saat menjalani isolasi mandiri.\n- Tinggal di rumah dan jangan pergi bekerja atau ke ruang publik. \n- Gunakan kamar terpisah di rumah dari anggota keluarga lainnya. \n- Jika memungkinkan, upayakan menjaga jarak dari anggota keluarga lain. \n- Gunakan selalu masker selama masa isolasi mandiri. \n- Lakukan pengukuran suhu harian dan observasi gejala klinis, seperti batuk atau kesulitan bernapas. \n- Hindari pemakaian bersama peralatan makan, perlengkapan mandi, dan seprai. \n- Terapkan perilaku hidup bersih dan sehat (PHBS) dengan mengonsumsi makanan bergizi, melakukan kebersihan tangan rutin, \n- mencuci tangan dengan sabun dan air mengalir. \n- Berada di ruang terbuka dan berjemur di bawah sinar matahari setiap pagi. \n- Jaga kebersihan rumah dengan cairan disinfektan. \n- Hubungi segera fasilitas pelayanan kesehatan jika memburuk agar mendapatkan perawatan lebih lanjut. \n\nPerlu dicatat, jika kadar oksigen 90 persen atau lebih, tetapi di bawah 94 persen, segera hubungi tenaga kesehatan atau minta perawatan di rumah sakit. Apabila kadar oksigen di bawah 90 persen, itu berarti pasien mengalami Covid-19 berat. Segera hubungi penyedia layanan kesehatan atau minta segera dirawat di rumah sakit.",
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