import 'package:flutter/material.dart';
import 'package:quarantips/config/provider.dart';
import 'package:provider/provider.dart';
import 'package:quarantips/config/utils.dart';
import 'package:quarantips/config/event.dart';

class EventViewingPage extends StatelessWidget {
  final Event event;

  const EventViewingPage({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(children: [
        const Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 300, 0),
            child: Text("Aktivitas",
                style: TextStyle(
                    fontFamily: 'kanit',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18))),
        Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 280, 0),
            child: Text(event.title,
                style:
                    const TextStyle(fontFamily: 'kanit', color: Colors.white))),
        const Padding(
            padding: EdgeInsets.fromLTRB(0, 25, 300, 0),
            child: Text("Deskripsi",
                style: TextStyle(
                    fontFamily: 'kanit',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18))),
        Padding(
            padding: const EdgeInsets.fromLTRB(0, 25, 280, 0),
            child: Text(event.description,
                style:
                    const TextStyle(fontFamily: 'kanit', color: Colors.white))),
        const Padding(
          padding: EdgeInsets.fromLTRB(0, 30, 320, 0),
          child: Text(
            "Mulai",
            style: TextStyle(
                fontFamily: 'kanit', fontSize: 18, color: Colors.white),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
                flex: 2,
                child: Text(
                  Utils.toDate(event.from),
                  style:
                      const TextStyle(fontFamily: 'kanit', color: Colors.white),
                )),
            Expanded(
                child: Text(
              Utils.toTime(event.from),
              style: const TextStyle(fontFamily: 'kanit', color: Colors.white),
            )),
          ],
        ),
      ]),
    );
  }

  Widget buildDropdownField({
    required String text,
  }) =>
      ListTile(
        title: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      );
}
