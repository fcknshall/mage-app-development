import 'dart:ui';

import 'package:provider/provider.dart';
import 'package:quarantips/config/provider.dart';
import 'config/imagecarousel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quarantips/loginPage/daftar.dart';
import 'package:quarantips/loginPage/login.dart';
import 'dart:async';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent),
  );
  runApp(ChangeNotifierProvider(
    create: (context) => EventProvider(),
    child: MaterialApp(
      title: "Quarantips",
      home: const Splashscreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(73, 97, 222, 1),
          visualDensity: VisualDensity.adaptivePlatformDensity),
    ),
  ));
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const MyApp())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(73, 97, 222, 1),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Image.asset(
            'assets/images/splash_screen.png',
            width: 250,
          ),
        ),
        const Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text('Quarantips',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold))),
        const Padding(
            padding: EdgeInsets.only(top: 260, right: 250),
            child: Text('Terkoneksi dengan',
                style: TextStyle(
                    fontFamily: 'kanitlight',
                    fontSize: 16,
                    color: Colors.white))),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/pp.png', width: 80),
              Image.asset('assets/images/Zaxi.png', width: 80),
              Image.asset(
                'assets/images/mage-title-white.png',
                width: 100,
              ),
            ],
          ),
        )
      ]),
    );
  }
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
            padding: const EdgeInsets.only(top: 100, bottom: 0),
            child: CarouselSlider(
              items: const [
                MyImageView('assets/images/startpage/punya-tavi.png'),
                MyImageView("assets/images/startpage/stay-home.png"),
                MyImageView("assets/images/startpage/sick-girl.png"),
              ],
              options: CarouselOptions(
                height: 285.0,
                autoPlayInterval: const Duration(seconds: 5),
                autoPlay: true,
                enableInfiniteScroll: true,
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 10, right: 70, top: 30, bottom: 0),
              child: Text("WELCOME TO QUARANTIPS",
                  style: TextStyle(
                      fontFamily: 'Kanit', fontSize: 24, color: Colors.white))),
          const Padding(
              padding: EdgeInsets.only(left: 10, right: 40, top: 10, bottom: 0),
              child: Text(
                  "Karena kami ada disini untuk menemani mu di perjalanan kamu saat isolasi mandiri",
                  style: TextStyle(
                    fontFamily: 'KanitLight',
                    fontSize: 16,
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
                child: const Text(
                  'LOGIN',
                  style: TextStyle(
                      fontFamily: 'Kanit', fontSize: 30, color: Colors.white),
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
              child: const Text(
                'DAFTAR',
                style: TextStyle(
                  fontFamily: 'Kanit',
                  fontSize: 30,
                ),
              ),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Daftar())),
            ),
          ),
        ],
      ),
    );
  }
}
