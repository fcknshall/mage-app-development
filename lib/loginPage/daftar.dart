import 'package:flutter/material.dart';
import 'package:quarantips/loginPage/daftar2.dart';

class Daftar extends StatefulWidget {
  const Daftar({Key? key}) : super(key: key);

  @override
  State<Daftar> createState() => _DaftarState();
}

class _DaftarState extends State<Daftar> {
  DateTime selectedDate = DateTime.now();
  final _textEditingController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(1960),
        lastDate: DateTime.now());
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        _textEditingController.text = "${selectedDate.toLocal()}".split(' ')[0];
      });
    }
  }

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
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25, right: 0, top: 10, bottom: 0),
                    child: Container(
                      width: 100,
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
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25, right: 0, top: 10, bottom: 0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(Icons.female),
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 25, right: 0, top: 10, bottom: 0),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 1),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const IconButton(
                        onPressed: null,
                        icon: Icon(Icons.do_not_disturb_on_outlined),
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(1, 30, 200, 0),
                child: Text(
                  "Masukan Tanggal Lahir",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                child: TextFormField(
                    controller: _textEditingController,
                    cursorColor: Colors.white,
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Color.fromRGBO(38, 61, 188, 100),
                      border: OutlineInputBorder(borderSide: BorderSide()),
                      hintText: 'YY/MM/DD',
                      hintStyle: TextStyle(color: Colors.white),
                      prefixIcon: Padding(
                          padding: EdgeInsets.only(right: 1),
                          child: Icon(Icons.calendar_today_rounded)),
                    ),
                    onTap: () {
                      _selectDate(context);
                      FocusScope.of(context).requestFocus(FocusNode());
                    }),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 280, 40, 0),
                child: ElevatedButton(
                  style: ButtonStyle(
                      fixedSize: MaterialStateProperty.all(const Size(350, 50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.white))),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(38, 61, 177, 100))),
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Daftar2())),
                  child: const Text("Continue"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
