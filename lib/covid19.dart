import 'network.dart';
import 'package:flutter/material.dart';

class CoronaVirusApp extends StatefulWidget {
  const CoronaVirusApp({Key? key}) : super(key: key);

  @override
  _CoronaVirusAppState createState() => _CoronaVirusAppState();
}

class _CoronaVirusAppState extends State<CoronaVirusApp> {
  Future data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getData();
    data.then((value) => {print(value[0]["name"])});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Covid 19 Quarantips"),
      ),
    );
  }

  Future getData() async {
    Network network = Network("https://api.kawalcorona.com/indonesia");
    return network.fetchData();
  }
}
