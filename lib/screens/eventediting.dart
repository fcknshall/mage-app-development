import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quarantips/config/event.dart';
import 'package:quarantips/config/utils.dart';
import 'package:quarantips/config/provider.dart';
import 'package:provider/provider.dart';

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
                  const Padding(
                      padding: EdgeInsets.fromLTRB(10, 40, 10, 0),
                      child: Text(
                        "AKTIVITAS",
                        style: TextStyle(
                            fontFamily: 'Kanit',
                            fontSize: 30,
                            color: Color.fromRGBO(227, 248, 251, 1)),
                      )),
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

  Future saveForm() async {
    final isTitleValid = _formKey.currentState!.validate();

    if (isTitleValid) {
      final event = Event(
        title: titlecontroller.text,
        description: descriptioncontroller.text,
        from: fromDate,
        to: toDate,
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
