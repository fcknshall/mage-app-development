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
              
            ],
          )
          )
        ),
      ),
    );
  }
}
