import 'package:flutter/material.dart';
import 'package:quarantips/screens/bottom_nav_screen.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(73, 97, 222, 1)),
      home: Scaffold(
        //AppBar
        appBar: AppBar(
          title: const Text(
            "Login Page",
            style: TextStyle(
              fontFamily: 'Kanit',
              fontSize: 30,
              color: Color.fromRGBO(227, 248, 251, 1),
            ),
          ),
          
          automaticallyImplyLeading: true,
          backgroundColor: const Color.fromRGBO(73, 97, 222, 100),
          leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              //Email
              const Padding(
                padding:
                    EdgeInsets.only(left: 15, right: 310, top: 100, bottom: 0),
                child: Text(
                  "E-Mail",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Kanit',
                    fontSize: 20,
                  ),
                ),
              ),
              //Field Email
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
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'KanitLight',
                    ),
                    labelText: 'Masukan email anda',
                    hintText: 'Masukan email anda',
                  ),
                ),
              ),
              //Password
              const Padding(
                  padding: EdgeInsets.only(
                      left: 15, right: 290, top: 100, bottom: 0),
                  child: Text("Password",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Kanit',
                        fontSize: 20,
                      ))),
              //Password Field
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 10, bottom: 0),
                child: TextFormField(
                  obscureText: true,
                  cursorColor: Colors.white,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    filled: true,
                    fillColor: Color.fromRGBO(38, 61, 177, 100),
                    border: OutlineInputBorder(borderSide: BorderSide()),
                    labelText: 'Password',
                    labelStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'KanitLight',
                    ),
                  ),
                ),
              ),
              //Continue
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 280, 20, 0),
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
                    MaterialPageRoute(
                        builder: (context) => const BottomNavScreen()),
                    (Route<dynamic> route) => false,
                  ),
                  child: const Text(
                    "Continue",
                    style: TextStyle(
                      fontFamily: 'Kanit',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
