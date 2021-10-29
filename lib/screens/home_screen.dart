import 'package:flutter/material.dart';
import 'package:quarantips/screens/screens.dart';
import 'package:quarantips/screens/timer.dart';
import '/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String _country = 'INA';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: const CustomAppbar1(),
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _timerbox(),
          _saranbox(),
          _eventbox(),
          _aboutbox(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40.0),
            bottomRight: Radius.circular(40.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                Text(
                  'Quarantips',
                  style: TextStyle(
                    color: Color.fromRGBO(105, 123, 235, 1),
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Kanit',
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  'Hey, Gimana kabar Mu ?',
                  style: TextStyle(
                    color: Color.fromRGBO(105, 123, 235, 1),
                    fontSize: 22.0,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'KanitLight',
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                const Text(
                  'Selamat datang di Quarantips \nAplikasi Pembantu dalam melewati Masa Karantina',
                  style: TextStyle(
                    color: Color.fromRGBO(105, 123, 235, 70),
                    fontSize: 15.0,
                    fontFamily: 'KanitLight',
                  ),
                ),
              ],
            )
          ],
        ),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 40),
        height: 240,
      ),
    );
  }

  SliverToBoxAdapter _timerbox() {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const Text(
            "Isoman Countdown                         ",
            style: TextStyle(
              fontFamily: "Kanit",
              fontSize: 24,
              color: Color.fromRGBO(245, 253, 104, 1),
            ),
          ),
          Container(
            width: 350,
            height: 150,
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 40),
            decoration: BoxDecoration(
                color: const Color.fromRGBO(105, 123, 235, 1),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(73, 97, 100, 100),
                    blurRadius: 15,
                    offset: Offset(0, 5),
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child: const Text(
                      "Sisa Waktu Karantina Anda                 \nTinggal : ",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: "Kanit",
                        fontSize: 20,
                        color: Color.fromRGBO(245, 253, 104, 1),
                      ),
                    ),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) =>  news1()),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SliverToBoxAdapter _saranbox() {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          const Text(
            "Saran Kegiatan :                               ",
            style: TextStyle(
              fontFamily: "Kanit",
              fontSize: 24,
              color: Color.fromRGBO(245, 253, 104, 1),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  child: Container(
                    width: 270,
                    height: 150,
                    margin: const EdgeInsets.fromLTRB(20, 10, 10, 40),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(105, 123, 235, 1),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(73, 97, 100, 100),
                            blurRadius: 15,
                            offset: Offset(0, 5),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: const Text(
                            "> Olahraga :                           \n - Lari Pagi\n> Makanan :\n -Ayam Rebus",
                            style: TextStyle(
                              fontFamily: "Kanit",
                              fontSize: 20,
                              color: Color.fromRGBO(245, 253, 104, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => news1()),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: 270,
                    height: 150,
                    margin: const EdgeInsets.fromLTRB(20, 10, 10, 40),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(105, 123, 235, 1),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(73, 97, 100, 100),
                            blurRadius: 15,
                            offset: Offset(0, 5),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: const Text(
                            "> Olahraga :                           \n - Yoga \n> Makanan :\n -Salad Buah & Sayur",
                            style: TextStyle(
                              fontFamily: "Kanit",
                              fontSize: 20,
                              color: Color.fromRGBO(245, 253, 104, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => news1()),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: 270,
                    height: 150,
                    margin: const EdgeInsets.fromLTRB(20, 10, 10, 40),
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(105, 123, 235, 1),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(73, 97, 100, 100),
                            blurRadius: 15,
                            offset: Offset(0, 5),
                          ),
                        ]),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: const Text(
                            "> Olahraga :                           \n - Skipping 30 x 2 \n> Makanan : \n- Susu & Telur",
                            style: TextStyle(
                              fontFamily: "Kanit",
                              fontSize: 20,
                              color: Color.fromRGBO(245, 253, 104, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => news1()),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SliverToBoxAdapter _eventbox() {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
            Text(
              "Top Stories                                       ",
              style: TextStyle(
                fontFamily: "KanitLight",
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Text(
              "See all ",
              style: TextStyle(
                fontFamily: "KanitLight",
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.white,
            )
          ]),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  child: Container(
                    width: 170,
                    height: 150,
                    margin: const EdgeInsets.fromLTRB(20, 10, 10, 40),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(73, 97, 100, 100),
                            blurRadius: 15,
                            offset: Offset(0, 7),
                          ),
                        ]),
                    child: Image.asset('assets/images/berita 1.png'),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => news3()),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: 170,
                    height: 150,
                    margin: const EdgeInsets.fromLTRB(20, 10, 10, 40),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset('assets/images/berita 2.png'),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => news4()),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: 170,
                    height: 150,
                    margin: const EdgeInsets.fromLTRB(20, 10, 10, 40),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset('assets/images/berita 3 .png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  SliverToBoxAdapter _aboutbox() {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.end, children: const [
            Text(
              "About This App                              ",
              style: TextStyle(
                fontFamily: "KanitLight",
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Text(
              "See all ",
              style: TextStyle(
                fontFamily: "KanitLight",
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: Colors.white,
            )
          ]),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  child: Container(
                    width: 290,
                    height: 140,
                    margin: const EdgeInsets.fromLTRB(20, 10, 10, 20),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(73, 97, 100, 100),
                            blurRadius: 15,
                            offset: Offset(0, 7),
                          ),
                        ]),
                    child: Image.asset('assets/images/mage.png'),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => news3()),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: 290,
                    height: 140,
                    margin: const EdgeInsets.fromLTRB(20, 10, 10, 20),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset('assets/images/zaxis.png'),
                  ),
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => news4()),
                  ),
                ),
                GestureDetector(
                  child: Container(
                    width: 290,
                    height: 140,
                    margin: const EdgeInsets.fromLTRB(20, 10, 10, 20),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20)),
                    child: Image.asset('assets/images/berita 3 .png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
