import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quarantips/config/event.dart';
import 'package:quarantips/config/utils.dart';
import 'package:quarantips/config/provider.dart';
import 'package:provider/provider.dart';
import 'profile.dart';

class Aktivitas extends StatefulWidget {
  final Event? event;

  const Aktivitas({
    Key? key,
    this.event,
  }) : super(key: key);

  @override
  _AktivitasState createState() => _AktivitasState();
}

class _AktivitasState extends State<Aktivitas> {
  final _formKey = GlobalKey<FormState>();
  late DateTime fromDate;
  late DateTime toDate;
  final titlecontroller = TextEditingController();
  final descriptioncontroller = TextEditingController();
  final locationcontroller = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.event == null) {
      fromDate = DateTime.now();
      toDate = DateTime.now().add(const Duration(hours: 2));
    } else {
      final event = widget.event!;

      titlecontroller.text = event.title;
      descriptioncontroller.text = event.description;
      fromDate = event.from;
      toDate = event.to;
    }
  }

  @override
  void dispose() {
    titlecontroller.dispose();
    descriptioncontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => EventProvider(),
        child: MaterialApp(
          home: Scaffold(
            backgroundColor: const Color.fromRGBO(73, 97, 222, 1),
            body: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            iconSize: 28,
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(Icons.arrow_back)),
                        const Text(
                          "Aktivitas",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'kanit',
                              fontSize: 24),
                        ),
                        IconButton(
                          iconSize: 28,
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => const ProfileScreen())),
                          icon: const Icon(Icons.person_outline_sharp),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: Text("Nama Aktivitas",
                          style: TextStyle(
                              fontFamily: 'kanit', color: Colors.white))),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextFormField(
                      onFieldSubmitted: (_) => saveForm,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mode_edit),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0))),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0))),
                      ),
                      controller: titlecontroller,
                      validator: (title) {
                        title != null && title.isEmpty
                            ? 'Nama Aktivitas tidak bisa kosong'
                            : null;
                      },
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: Text("Deskripsi Aktivitas",
                          style: TextStyle(
                              fontFamily: 'kanit', color: Colors.white))),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextFormField(
                      onFieldSubmitted: (_) => saveForm,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.mode_edit),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0))),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0))),
                      ),
                      controller: descriptioncontroller,
                      validator: (description) {
                        description != null && description.isEmpty
                            ? 'Deskripsi Aktivitas tidak bisa kosong'
                            : null;
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(1, 30, 280, 0),
                    child: Text(
                      "Mulai",
                      style: TextStyle(
                          fontFamily: 'kanit',
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: buildDropdownField(
                            text: Utils.toDate(fromDate),
                            onClicked: () => pickFromDateTime(pickDate: true),
                          )),
                      Expanded(
                          child: buildDropdownField(
                        text: Utils.toTime(fromDate),
                        onClicked: () => pickFromDateTime(pickDate: false),
                      )),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(1, 30, 265, 0),
                    child: Text(
                      "Berakhir",
                      style: TextStyle(
                          fontFamily: 'kanit',
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: buildDropdownField(
                            text: Utils.toDate(toDate),
                            onClicked: () => pickToDateTime(pickDate: true),
                          )),
                      Expanded(
                          child: buildDropdownField(
                        text: Utils.toTime(toDate),
                        onClicked: () => pickToDateTime(pickDate: false),
                      )),
                    ],
                  ),
                  const Padding(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                      child: Text("Lokasi",
                          style: TextStyle(
                              fontFamily: 'kanit', color: Colors.white))),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: TextFormField(
                      onFieldSubmitted: (_) => saveForm,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.location_on),
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0))),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25.0))),
                      ),
                      controller: locationcontroller,
                      validator: (title) {
                        title != null && title.isEmpty
                            ? 'Lokasi tidak bisa kosong'
                            : null;
                      },
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                      child: ElevatedButton(
                          onPressed: saveForm,
                          child: const Text("Save",
                              style: TextStyle(
                                  fontFamily: 'kanit', color: Colors.white))))
                ]),
              ),
            ),
          ),
        ),
      );

  Future pickFromDateTime({required bool pickDate}) async {
    final date = await pickDateTime(fromDate, pickDate: pickDate);

    if (date == null) return;

    if (date.isAfter(toDate)) {
      toDate =
          DateTime(date.year, date.month, date.day, toDate.hour, toDate.minute);
    }

    setState(() {
      fromDate = date;
    });
  }

  Future pickToDateTime({required bool pickDate}) async {
    final date = await pickDateTime(toDate,
        pickDate: pickDate, firstDate: pickDate ? fromDate : null);

    if (date == null) return;

    if (date.isAfter(toDate)) {
      toDate =
          DateTime(date.year, date.month, date.day, toDate.hour, toDate.minute);
    }

    setState(() {
      toDate = date;
    });
  }

  Future<DateTime?> pickDateTime(
    DateTime initialDate, {
    required bool pickDate,
    DateTime? firstDate,
  }) async {
    if (pickDate) {
      final date = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: firstDate ?? DateTime(2015, 8),
        lastDate: DateTime.now().add(const Duration(days: 365)),
      );

      if (date == null) return null;

      final time =
          Duration(hours: initialDate.hour, minutes: initialDate.minute);

      return date.add(time);
    } else {
      final timeOfDay = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.fromDateTime(initialDate),
      );

      if (timeOfDay == null) return null;

      final date =
          DateTime(initialDate.year, initialDate.month, initialDate.day);
      final time = Duration(hours: timeOfDay.hour, minutes: timeOfDay.minute);

      return date.add(time);
    }
  }

  Widget buildDropdownField({
    required String text,
    required VoidCallback onClicked,
  }) =>
      ListTile(
        title: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
        trailing: const Icon(Icons.arrow_drop_down),
        onTap: onClicked,
      );

  // NOTE FOR AKTIVITAS=====================
  Future saveForm() async {
    final isTitleValid = _formKey.currentState!.validate();

    if (isTitleValid) {
      final event = Event(
        title: titlecontroller.text,
        description: descriptioncontroller.text,
        from: fromDate,
        to: toDate,
        isObat: false,
        location: locationcontroller.text,
        isAllDay: false,
      );

      final isEditing = widget.event != null;
      final provider = Provider.of<EventProvider>(context, listen: false);

      if (isEditing) {
        provider.editEvent(event, widget.event!);
        Navigator.of(context).pop();
      } else {
        provider.addEvent(event);
      }
      Navigator.of(context).pop();
    }
  }
}

class Obat extends StatefulWidget {
  final Event? event;

  const Obat({Key? key, this.event}) : super(key: key);

  @override
  _ObatState createState() => _ObatState();
}

class _ObatState extends State<Obat> {
  final _formKey = GlobalKey<FormState>();
  late String jenisObat;
  late String status;
  late int frekuensi;
  late int durasi;
  String dropdownDurasiValue = '1';
  String dropdownDurasiTypeValue = 'Hari';
  String dropdownFrekuensiValue = '1x';
  String dropdownFrekuensiTypeValue = 'PerHari';
  final titlecontroller = TextEditingController();
  final descriptioncontroller = TextEditingController();

  @override
  void dispose() {
    titlecontroller.dispose();
    descriptioncontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 35, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    iconSize: 28,
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back)),
                const Text(
                  "Obat",
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'kanit', fontSize: 24),
                ),
                IconButton(
                  iconSize: 28,
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ProfileScreen())),
                  icon: const Icon(Icons.person_outline_sharp),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                  child: SizedBox(
                      height: 100.0,
                      child: IconButton(
                          iconSize: 200,
                          onPressed: () {
                            jenisObat = 'Pill';
                          },
                          icon: Image.asset('assets/images/pill2.png')))),
              Expanded(
                  child: SizedBox(
                      height: 100.0,
                      child: IconButton(
                          iconSize: 200,
                          onPressed: () {
                            jenisObat = 'Tablet';
                          },
                          icon: Image.asset('assets/images/tablet.png')))),
              Expanded(
                  child: SizedBox(
                      height: 100.0,
                      child: IconButton(
                          iconSize: 200,
                          onPressed: () {
                            jenisObat = 'Capsule';
                          },
                          icon: Image.asset('assets/images/capsule.png')))),
            ],
          ),
          const Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text("Nama Obat",
                  style: TextStyle(fontFamily: 'kanit', color: Colors.white))),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
            child: TextFormField(
              onFieldSubmitted: (_) {},
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mode_edit),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
              ),
              controller: titlecontroller,
              validator: (title) {
                title != null && title.isEmpty
                    ? 'Nama Obat tidak bisa kosong'
                    : null;
              },
            ),
          ),
          const Padding(
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              child: Text("Deskripsi Obat",
                  style: TextStyle(fontFamily: 'kanit', color: Colors.white))),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
            child: TextFormField(
              onFieldSubmitted: (_) {},
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.mode_edit),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0))),
              ),
              controller: descriptioncontroller,
              validator: (description) {
                description != null && description.isEmpty
                    ? 'Deskripsi Obat tidak bisa kosong'
                    : null;
              },
            ),
          ),
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
                          DropdownButton<String>(
                            value: dropdownDurasiValue,
                            icon: const Icon(Icons.arrow_downward),
                            iconSize: 24,
                            style: const TextStyle(color: Colors.black),
                            underline: Container(
                              height: 1,
                              color: Colors.black,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownDurasiValue = newValue!;
                              });
                            },
                            items: <String>['1', '2', '3', '4', '5', '6', '7']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                          DropdownButton<String>(
                            value: dropdownDurasiTypeValue,
                            icon: const Icon(Icons.arrow_downward),
                            iconSize: 24,
                            style: const TextStyle(color: Colors.black),
                            underline: Container(
                              height: 1,
                              color: Colors.black,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownDurasiTypeValue = newValue!;
                              });
                            },
                            items: <String>['Hari', 'Minggu', 'Bulan']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
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
                          const Icon(Icons.calendar_today_outlined),
                          DropdownButton<String>(
                            value: dropdownFrekuensiValue,
                            icon: const Icon(Icons.arrow_downward),
                            iconSize: 24,
                            style: const TextStyle(color: Colors.black),
                            underline: Container(
                              height: 1,
                              color: Colors.black,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownFrekuensiValue = newValue!;
                              });
                            },
                            items: <String>['1x', '2x', '3x']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                          DropdownButton<String>(
                            value: dropdownFrekuensiTypeValue,
                            icon: const Icon(Icons.arrow_downward),
                            iconSize: 24,
                            style: const TextStyle(color: Colors.black),
                            underline: Container(
                              height: 1,
                              color: Colors.black,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownFrekuensiTypeValue = newValue!;
                              });
                            },
                            items: <String>['PerHari', 'PerMinggu', 'PerBulan']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ],
                      )
                    ],
                  ),
                )
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
                          style: TextStyle(
                              fontFamily: 'kanit', color: Colors.black)),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              status = 'Sebelum';
                            },
                            child: const Text("Sebelum",
                                style: TextStyle(
                                    fontFamily: 'kanit', color: Colors.white)),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromRGBO(104, 128, 255, 100))),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              status = 'Sesudah';
                            },
                            child: const Text("Sesudah",
                                style: TextStyle(
                                    fontFamily: 'kanit', color: Colors.white)),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromRGBO(104, 128, 255, 100))),
                          ),
                        ]),
                  ],
                ),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: ElevatedButton(
                  onPressed: saveForm,
                  child: const Text("Save",
                      style:
                          TextStyle(fontFamily: 'kanit', color: Colors.white))))
        ],
      ),
    ));
  }
  // NOTE FOR OBAT==================
  Future saveForm() async {
    final isTitleValid = _formKey;

    // ignore: unnecessary_null_comparison
    if (isTitleValid != null) {
      final event = Event(
          title: titlecontroller.text,
          description: descriptioncontroller.text,
          isObat: true,
          durasi: dropdownDurasiValue,
          durasiType: dropdownDurasiTypeValue,
          frekuensi: dropdownFrekuensiValue,
          frekuensiType: dropdownFrekuensiTypeValue,
          from: DateTime.now(),
          to: DateTime.now().add(const Duration(hours: 2)),
          jenisObat: jenisObat,
          status: status);

      final isEditing = widget.event != null;
      final provider = Provider.of<EventProvider>(context, listen: false);

      if (isEditing) {
        provider.editEvent(event, widget.event!);
        Navigator.of(context).pop();
      } else {
        provider.addEvent(event);
      }
      Navigator.of(context).pop();
    }
  }
}
