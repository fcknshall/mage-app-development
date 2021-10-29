 import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import '/config/palette.dart';
import '/config/styles.dart';
import '/config/data.dart';
import '/widgets/widgets.dart';
import 'screens.dart';

class infocovid extends StatefulWidget {
  @override
  _infocovidState createState() => _infocovidState();
}

class _infocovidState extends State<infocovid> {
  /* late kota selectedkota;
  List <kota> daerah = [
    kota("Kota Surabaya"),
    kota("Kota Jakarta"),
    kota("Kota Depok"),

  ];
  List <DropdownMenuItem> generateItems(List <kota> daerah){
    List <DropdownMenuItem> items = [];
    for(var item in daerah){
      items.add(DropdownMenuItem(child: Text(item.nama), value: item,
       

      ));
    }
    return items;
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(),
          _tabelcovid(),
          _tabelkasus(),
          _tabelnews(),
          
          
        ],
      ),
    );
  }

  SliverPadding _buildHeader() {
    return SliverPadding(
      padding: const EdgeInsets.all(20),
      sliver: SliverToBoxAdapter(
        child: Text(
          'Info Covid',
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

  
  

/* SliverToBoxAdapter _buildKota (){
   return SliverToBoxAdapter(
     child: Column(children: <Widget> [
       Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
      height: 30.0,
         margin: EdgeInsets.all(10),
         decoration : BoxDecoration(   color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        
      ),
       
      

         
         child: DropdownButton(
           style: TextStyle(color: Colors.black,fontSize: 16),
           
           value: selectedkota,
           items: generateItems(daerah),
           onChanged: (item){
             setState(() {
               selectedkota = item;
             });
           },
         ),
         
       ),
       
     ],
     ),
   );
 }
 */
  /*SliverToBoxAdapter _tabelcovid() {
    return SliverToBoxAdapter(
        child: Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          height: 200.0,
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ],
    ));
  }*/

  SliverToBoxAdapter _tabelkasus() {
    return SliverToBoxAdapter(
      
        child: Column(
          
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 5.0),
          height: 150.0,
          width: 350,
          child: Column(
            
            children: [
             
              Row(
                children: [
                  Card(       
                    margin: const EdgeInsets.fromLTRB(10,25,15,10) ,            
                  child: Container(
                    height: 80,
                    width: 90,
                     
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius:10,


                        ),
                      ]
                    
                    ),
                     child: Column(
                        
                        children: [
                          Text("66.345", style: TextStyle(
                            fontFamily: "Kanit",
                            fontSize: 18,
                          ),),
                          Text("Konfirmasi\nKota Surabaya", style: TextStyle(
                            fontFamily: "KanitLight",
                            fontSize: 12,
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_upward, size: 14, color: Colors.red,),
                              Text("0.024%", style: TextStyle(
                            fontFamily: "KanitLight",
                            fontSize: 11,
                            color: Colors.red,
                          ),),
                            ],

                          ),
                        ],
                      ) ,    
                                       
                  ),
                    
                  ),
                  Card(       
                    margin: const EdgeInsets.fromLTRB(10,25,15,10) ,            
                  child: Container(
                    height: 80,
                    width: 90,
                     
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius:10,


                        ),
                      ]
                    
                    ),
                      child: Column(
                        
                        children: [
                          Text("66.679", style: TextStyle(
                            fontFamily: "Kanit",
                            fontSize: 18,
                          ),),
                          Text("Konfirmasi\n  Sembuh", style: TextStyle(
                            fontFamily: "KanitLight",
                            fontSize: 12,
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_upward, size: 14, color: Colors.green,),
                              Text("0.024%", style: TextStyle(
                            fontFamily: "KanitLight",
                            fontSize: 11,
                            color: Colors.green,
                          ),),
                            ],

                          ),
                        ],
                      ) ,    
                  ),
                    
                  ),
                   Card(       
                    margin: const EdgeInsets.fromLTRB(10,25,10,10) ,            
                  child: Container(
                    height: 80,
                    width: 90,
                     
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius:10,


                        ),
                      ]
                    
                    ),
                                child: Column(
                        
                        children: [
                          Text("52,230", style: TextStyle(
                            fontFamily: "Kanit",
                            fontSize: 18,
                          ),),
                          Text("Konfirmasi\n  Kematian", style: TextStyle(
                            fontFamily: "KanitLight",
                            fontSize: 12,
                          ),),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.arrow_upward, size: 14, color: Colors.red,),
                              Text("0.012%", style: TextStyle(
                            fontFamily: "KanitLight",
                            fontSize: 11,
                            color: Colors.red,
                          ),),
                            ],

                          ),
                        ],
                      ) ,            
                  ),
                    
                  ),
                ],
              ),
              Text("Terakhir di-update pada tanggal 23 September 2021", style: TextStyle(
                            fontFamily: "KanitLight",
                            fontSize: 11,),
                            ),
            ],

          ),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            
          ),
          
        ),
      ],
    ));
  }
  SliverToBoxAdapter _tabelcovid() {
    return SliverToBoxAdapter(
      child: Container(
        width: 150,
        height: 300,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(10),
        ),
      
      child: DefaultTabController(
          
        length: 3, 
      
      child: Scaffold(

          appBar: TabBar(
              labelPadding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            indicatorPadding: EdgeInsets.fromLTRB(10, 0, 10, 0),
           indicator: BubbleTabIndicator(
              tabBarIndicatorSize: TabBarIndicatorSize.tab,
              indicatorHeight: 20.0,
              indicatorColor: Colors.white,
              
            ),
              tabs: <Widget>[
              Text(
                'Kasus',
                style: TextStyle(
                    fontFamily:"KanitLight",
                  fontSize: 13,
                  color: Colors.lightBlue,
                ),
              ),
              Text(
                'Sembuh',
                style: TextStyle(
                  fontFamily:"KanitLight",
                  fontSize: 13,
                  color: Colors.green,
                ),
              ),
              Text(
                'Kematian',
                style: TextStyle(
                    fontFamily:"KanitLight",
                  fontSize: 13,
                  color: Colors.black,
                ),
              ),
              
            ],
          
          ),
          body: TabBarView(
            children: [
              kasus(),
              sembuh(),
              kematian(),
            ],
          ),
      ),
        
      ),
     
        
      ),
  

    );

  }
  SliverToBoxAdapter _tabelnews () {
return SliverToBoxAdapter(
child: Column(
  children: [
Container(
  
  margin: EdgeInsets.all(20),
  width: 350,
  height: 115,
  
  decoration: BoxDecoration(
    color: Colors.blueAccent[100],
    borderRadius: BorderRadius.circular(20),
     boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(73, 97, 100, 100),
                          blurRadius:10,
                          spreadRadius: 3,


                        ),
                      ]
    
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Image.asset('assets/images/sick 1.png'),

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Gejala - gejala \ndari Covid-19",
          textAlign: TextAlign.center,

          style: TextStyle(
            fontFamily: "Kanit",
            fontSize: 20,
          ),),
          TextButton(
            child: 
            Text("Baca Lebih Lanjut",style: TextStyle(
              fontFamily: "KanitLight",
              fontSize: 14,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ), ),
          
          
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>  news1()),
          ),
          ),
        ],
      ),
    ],
    
  ),
),
Container(
  width: 350,
  height: 115,
  margin: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Colors.blueAccent[100],
    borderRadius: BorderRadius.circular(20),
     boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(73, 97, 100, 100),
                          blurRadius:10,
                          spreadRadius: 3,


                        ),
                      ]
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Image.asset('assets/images/virus.png'),

      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Bagaimana Covid - 19 \nMenyebar",
            textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: "Kanit",
            fontSize: 20,
          ),
          ),
         TextButton(
            child: 
            Text("Baca Lebih Lanjut",style: TextStyle(
              fontFamily: "KanitLight",
              fontSize: 14,
              color: Colors.black,
              decoration: TextDecoration.underline,
            ), ),
          
          
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>  news2()),
          ),
          ),
        ],
      ),
    ],
    
  ),
),

  ],
),
);
  }

}
class kasus extends StatefulWidget {
 

  @override
  _kasusState createState() => _kasusState();
}

class _kasusState extends State<kasus> {
  @override
  Widget build(BuildContext context) {
    return Container(
     
       margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20)
      ),
      child: Image.asset('assets/images/kasus.png'),
    );
  }
}
class sembuh extends StatefulWidget {
 

  @override
  _sembuhState createState() => _sembuhState();
}

class _sembuhState extends State<sembuh> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20)
      ),
      child: Image.asset('assets/images/Group 17.png'),
    );
  }
}
class kematian extends StatefulWidget {
 

  @override
  _kematianState createState() => _kematianState();
}

class _kematianState extends State<kematian> {
  @override
  Widget build(BuildContext context) {
    return Container(
     
       margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(20)
      ),
      child: Image.asset('assets/images/mati.png'),
    );
  }
}



