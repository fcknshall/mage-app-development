// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart';

class Network {
  final String url;

  Network(this.url);

  Future fetchData() async {
    Response response = await get(Uri.dataFromString(url));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      print(response.statusCode);
    }
  }
}
