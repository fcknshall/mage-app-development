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
           _tabelcovid(),
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
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10,),
          height: 30.0,
          decoration: BoxDecoration(
            color: Colors.white54,
            borderRadius: BorderRadius.circular(25.0),
            
          ),
          child: TabBar(
            indicator: BubbleTabIndicator(
              tabBarIndicatorSize: TabBarIndicatorSize.tab,
              indicatorHeight: 20.0,
              indicatorColor: Colors.white,
            ),
            labelStyle: Styles.tabTextStyle,
            labelColor: Colors.black,
            unselectedLabelColor: Colors.white,
            tabs: <Widget>[
              Text('Kasus',style: TextStyle(
                fontSize: 13,
                color:Colors.lightBlue,
                
              ),),
              Text('Sembuh',style: TextStyle(
                fontSize: 13,
                color:Colors.green,
              ),),
               Text('Kematian',style: TextStyle(
                fontSize: 13,
                color:Colors.black,
              ),),

            ],
            onTap: (index) {},
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
  SliverToBoxAdapter _tabelcovid (){
   return SliverToBoxAdapter(
     child: Column(children: <Widget> [
       Container(
         
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
      height: 200.0,
         margin: EdgeInsets.all(15),
         decoration : BoxDecoration(   color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        
      ),
       ),
     ],
   ));
     
  }
  SliverToBoxAdapter _tabelkasus (){
   return SliverToBoxAdapter(
     child: Column(children: <Widget> [
       Container(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
      height: 150.0,
         margin: EdgeInsets.all(10),
         decoration : BoxDecoration(   color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        
      ),
       ),
     ],
   ));
     
  }
  

  
}
