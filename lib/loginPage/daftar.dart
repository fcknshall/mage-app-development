import 'package:flutter/material.dart';

class Daftar extends StatelessWidget {
  const Daftar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(73, 97, 222, 100)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Daftar"),
          automaticallyImplyLeading: true,
          backgroundColor: const Color.fromRGBO(73, 97, 222, 0.1),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const Padding(
                  padding:
                      EdgeInsets.only(left: 1, right: 250, top: 100, bottom: 0),
                  child: Text(
                    "Nama Lengkap",
                    style: TextStyle(color: Colors.white),
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
                      hintText: 'Masukan Nama Anda',
                      hintStyle: TextStyle(color: Colors.white)),
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 1, right: 240, top: 10, bottom: 0),
                      child: Container(
                        width: 50,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const IconButton(
                          onPressed: null,
                          icon: Icon(Icons.male),
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
