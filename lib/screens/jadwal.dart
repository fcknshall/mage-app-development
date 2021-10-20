import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'eventediting.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(scaffoldBackgroundColor: Colors.black),
        child: Scaffold(
          body: SfCalendar(
            todayHighlightColor: Colors.blue[800],
            backgroundColor: const Color.fromRGBO(73, 97, 222, 1),
            headerHeight: 100,
            view: CalendarView.month,
            initialSelectedDate: DateTime.now(),
            cellBorderColor: Colors.transparent,
          ),
          floatingActionButton: SpeedDial(
            animatedIcon: AnimatedIcons.add_event,
            animatedIconTheme: const IconThemeData(size: 30),
            childrenButtonSize: 70,
            backgroundColor: const Color.fromRGBO(109, 107, 221, 100),
            visible: true,
            curve: Curves.bounceIn,
            children: [
              SpeedDialChild(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(248, 253, 104, 1)),
                          textStyle: MaterialStateProperty.all(
                              const TextStyle(fontSize: 12)),
                          fixedSize:
                              MaterialStateProperty.all(const Size(350, 80)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color: Colors.yellow)))),
                      child: const Text("Obat",
                          style: TextStyle(
                              fontFamily: 'Kanit',
                              fontSize: 12,
                              color: Colors.black)),
                      onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const EventEditingPage()),
                          ))),
              SpeedDialChild(
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              const Color.fromRGBO(248, 253, 104, 1)),
                          textStyle: MaterialStateProperty.all(
                              const TextStyle(fontSize: 12)),
                          fixedSize:
                              MaterialStateProperty.all(const Size(350, 80)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                      side: const BorderSide(
                                          color: Colors.yellow)))),
                      child: const Text("Aktivitas",
                          style: TextStyle(
                              fontFamily: 'Kanit',
                              fontSize: 8,
                              color: Colors.black)),
                      onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const EventEditingPage()),
                          )))
            ],
          ),
        ));
  }
}
