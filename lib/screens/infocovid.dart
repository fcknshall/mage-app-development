 import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import '/config/palette.dart';
import '/config/styles.dart';
import '/config/data.dart';
import '/widgets/widgets.dart';

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
          _buildStatsTabBar(),
          _tabelkasus(),
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

  SliverToBoxAdapter _buildStatsTabBar() {
    return SliverToBoxAdapter(
      child: DefaultTabController(
        length: 3,
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10,
          ),
          height: 250.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: TabBar(
            labelPadding: EdgeInsets.fromLTRB(10, 10, 10, 200),
            indicatorPadding: EdgeInsets.fromLTRB(10, 10, 10, 180),
            indicator: BubbleTabIndicator(
              tabBarIndicatorSize: TabBarIndicatorSize.tab,
              indicatorHeight: 20.0,
              indicatorColor: Color.fromRGBO(197, 199, 196, 1),
            ),
            labelStyle: Styles.tabTextStyle,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            
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
          margin: EdgeInsets.all(15),
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

}
class second extends StatefulWidget {

  @override
  _secondState createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          height: 200.0,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
          ),
        ),
      ],
    ));
  }
      
}

class first extends StatefulWidget {

  @override
  _firstState createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          height: 200.0,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20.0),
            
          ),
        ),
      ],
    ));
  }
      
}
class third extends StatefulWidget {

  @override
  _thirdState createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          height: 200.0,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            
          ),
        ),
      ],
    ));
  }
      
}

