import 'dart:ui';

import 'data/imagecarousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quarantips/loginPage/daftar.dart';
import 'package:quarantips/loginPage/login.dart';
//import 'covid19.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent),
  );
  runApp(
    MaterialApp(
      title: "Quarantips",
      home: const MyApp(),
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(73, 97, 222, 1)),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 170, bottom: 80),
            child: CarouselSlider(
              items: const [
                MyImageView(
                  "assets/images/startpage/illustration.png"
                  ),
                MyImageView("assets/images/startpage/stayhome.png")
              ],
              options: CarouselOptions(
                height: 200.0,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlay: true,
                enableInfiniteScroll: true,
              ),
            ),
          ),
          const Padding(
              padding:
                  EdgeInsets.only(left: 10, right: 70, top: 10, bottom: 0),
              child: Text("WELCOME TO QUARANTIPS",
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 24,
                    color: Colors.white))),
          const Padding(
              padding: EdgeInsets.only(left: 10, right: 40, top: 10, bottom: 0),
              child: Text(
                  "Karena kami ada disini untuk menemani mu di perjalanan\nkamu saat isolasi mandiri",
                  style: TextStyle(
                    fontFamily: 'KanitLight',
                    fontSize: 13,
                    color: Colors.white,
                  ))),
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(73, 97, 222, 1)),
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 30)),
                    fixedSize: MaterialStateProperty.all(const Size(350, 80)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(color: Colors.yellow)))),
                child: const Text('LOGIN',
                style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 30,
                    color: Colors.white
                ),
                ),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login())),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(73, 97, 222, 1)),
                  textStyle:
                      MaterialStateProperty.all(const TextStyle(fontSize: 30)),
                  fixedSize: MaterialStateProperty.all(const Size(350, 80)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: Colors.yellow)))),
              child: const Text('DAFTAR',
              style: TextStyle(
                fontFamily: 'Kanit',
                fontSize: 30,
              ),),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Daftar())),
            ),
          ),
        ],
      ),
    );
  }
}
