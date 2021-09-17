import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(73, 97, 222, 100)),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Login Page"),
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
                  "Login Quarantips",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 10, bottom: 0),
                child: TextFormField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    filled: true,
                    fillColor: Color.fromRGBO(38, 61, 177, 100),
                    border: OutlineInputBorder(borderSide: BorderSide()),
                    labelStyle: TextStyle(color: Colors.white),
                    labelText: 'Username',
                    hintText: 'Masukan username',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 10, bottom: 0),
                child: TextFormField(
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Color.fromRGBO(38, 61, 177, 100),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.white)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(100, 380, 100, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(38, 61, 177, 100))),
                  onPressed: null,
                  child: const Text("Lanjutkan"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
