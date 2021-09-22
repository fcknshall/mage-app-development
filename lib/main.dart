import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quarantips/loginPage/daftar.dart';
import 'package:quarantips/loginPage/login.dart';
//import 'covid19.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Quarantips",
      home: const MyApp(),
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(73, 97, 222, 100)),
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
          const Padding(
              padding:
                  EdgeInsets.only(left: 1, right: 240, top: 500, bottom: 0),
              child: Text("Welcome to Quarantips",
                  style: TextStyle(color: Colors.white))),
          const Padding(
              padding: EdgeInsets.only(left: 1, right: 20, top: 10, bottom: 0),
              child: Text(
                  "Karena kami ada disini untuk menemani mu di perjalanan\nkamu saat isolasi mandiri",
                  style: TextStyle(
                    color: Colors.white,
                  ))),
          Padding(
              padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
              child: ElevatedButton(
                style: ButtonStyle(
                    textStyle: MaterialStateProperty.all(
                        const TextStyle(fontSize: 30)),
                    fixedSize: MaterialStateProperty.all(const Size(350, 80)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: const BorderSide(color: Colors.white)))),
                child: const Text('LOGIN'),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Login())),
              )),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: ElevatedButton(
              style: ButtonStyle(
                  textStyle:
                      MaterialStateProperty.all(const TextStyle(fontSize: 30)),
                  fixedSize: MaterialStateProperty.all(const Size(350, 80)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: const BorderSide(color: Colors.white)))),
              child: const Text('DAFTAR'),
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Daftar())),
            ),
          ),
        ],
      ),
    );
  }
}
