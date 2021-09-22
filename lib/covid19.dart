import 'network.dart';
import 'package:flutter/material.dart';

class CoronaVirusApp extends StatefulWidget {
  const CoronaVirusApp({Key? key}) : super(key: key);

  @override
  _CoronaVirusAppState createState() => _CoronaVirusAppState();
}

class _CoronaVirusAppState extends State<CoronaVirusApp> {
  late Future data;

  @override
  void initState() {
    super.initState();
    data = getData();
    // ignore: avoid_print
    data.then((value) => {print(value[0]["name"])});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Covid 19 Quarantips"),
        automaticallyImplyLeading: true,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back)),
      ),
    );
  }

  Future getData() async {
    Network network = Network("https://api.kawalcorona.com/indonesia");
    return network.fetchData();
    //konmtol
  }
}
