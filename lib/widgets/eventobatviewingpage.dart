// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:quarantips/config/provider.dart';
import 'package:provider/provider.dart';
import 'package:quarantips/config/utils.dart';
import 'package:quarantips/screens/eventediting.dart';
import 'package:quarantips/config/event.dart';

class EventObatViewingPage extends StatelessWidget {
  final Event event;

  const EventObatViewingPage({Key? key, required this.event}) : super(key: key);

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
            child: Text("Nama Obat",
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
            padding: EdgeInsets.fromLTRB(0, 25, 265, 0),
            child: Text("Deskripsi Obat",
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
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Text("Durasi",
                        style: TextStyle(
                            fontFamily: 'kanit', color: Colors.black)),
                    Row(
                      children: [
                        const Icon(Icons.query_builder),
                        Text(
                          event.durasi ?? '1',
                          style: const TextStyle(
                              fontFamily: 'kanit', color: Colors.black),
                        ),
                        Text(event.durasiType ?? 'Hari',
                            style: const TextStyle(
                                fontFamily: 'kanit', color: Colors.black)),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Text("Frekuensi",
                        style: TextStyle(
                            fontFamily: 'kanit', color: Colors.black)),
                    Row(
                      children: [
                        const Icon(Icons.query_builder),
                        Text(
                          event.frekuensi ?? '1x',
                          style: const TextStyle(
                              fontFamily: 'kanit', color: Colors.black),
                        ),
                        Text(event.frekuensiType ?? 'PerHari',
                            style: const TextStyle(
                                fontFamily: 'kanit', color: Colors.black)),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 40, 10, 0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white,
            ),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text("Sebelum atau sesudah makan?",
                      style:
                          TextStyle(fontFamily: 'kanit', color: Colors.black)),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text(event.status ?? 'Sebelum',
                      style: const TextStyle(
                          fontFamily: 'kanit', color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
                onPressed: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                        builder: (context) => Aktivitas(event: event))),
                icon: const Icon(Icons.create_outlined),
                label: const Text('Edit',
                    style:
                        TextStyle(fontFamily: 'kanit', color: Colors.white))),
            ElevatedButton.icon(
                onPressed: () {
                  final provider =
                      Provider.of<EventProvider>(context, listen: false);
                  provider.deleteEvent(event);

                  Navigator.pop(context);
                },
                icon: const Icon(Icons.delete),
                label: const Text('Hapus',
                    style: TextStyle(fontFamily: 'kanit', color: Colors.white)))
          ],
        )
      ]),
    );
  }
}
