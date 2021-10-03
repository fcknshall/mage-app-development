import 'package:flutter/material.dart';
import 'package:quarantips/main.dart';

class Daftar2 extends StatelessWidget {
  const Daftar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            scaffoldBackgroundColor: const Color.fromRGBO(73, 97, 222, 1)),
        home: Scaffold(
          appBar: AppBar(
            title: const Text("Daftar",
              style: TextStyle(fontFamily: 'Kanit', fontSize: 30, color: Color.fromRGBO(227,248,251,1)
          ),
            ),
            automaticallyImplyLeading: true,
            backgroundColor: const Color.fromRGBO(73, 97, 222, 1),
            leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back)),
          ),
          body: Column(
            children: <Widget>[
              const Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 310, top: 100, bottom: 0),
                  child: Text(
                    "E-mail",
                     style: TextStyle(color: Colors.white,
                  fontFamily: 'Kanit',
                  fontSize: 20,
                  ),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 10, bottom: 0),
                child: TextFormField(
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Color.fromRGBO(38, 61, 188, 100),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      hintText: 'Masukan email anda',
                      hintStyle: TextStyle(color: Colors.grey, fontFamily: 'KanitLight')),
                ),
              ),
              const Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 290, top: 50, bottom: 0),
                  child: Text(
                    "Password",
                     style: TextStyle(color: Colors.white,
                  fontFamily: 'Kanit',
                  fontSize: 20,
                  ),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 10, bottom: 0),
                child: TextFormField(
                  obscureText: true,
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Color.fromRGBO(38, 61, 188, 100),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      hintText: 'Masukan Password Anda',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              const Padding(
                  padding:
                      EdgeInsets.only(left: 10, right: 210, top: 50, bottom: 0),
                  child: Text(
                    "Confirm Password",
                    style: TextStyle(color: Colors.white,
                  fontFamily: 'Kanit',
                  fontSize: 20,),
                  )),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 10, bottom: 0),
                child: TextFormField(
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Color.fromRGBO(38, 61, 188, 100),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      hintText: 'Masukan Password Anda Kembali',
                      hintStyle: TextStyle(color: Colors.grey)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 190, 20, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(370, 60)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.white))),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(73, 97, 222, 1))),
                  onPressed: () => Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                    (Route<dynamic> route) => false,
                  ),
                  child: const Text("Continue",
                  style: TextStyle(color: Colors.white,
                  fontFamily: 'Kanit',
                  fontSize: 20,),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
