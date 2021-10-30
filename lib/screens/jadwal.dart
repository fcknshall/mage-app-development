import 'package:flutter/animation.dart';
import 'package:provider/provider.dart';
import 'package:quarantips/config/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'eventediting.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';
import 'package:quarantips/config/eventdatasource.dart';
import 'package:quarantips/widgets/taskwidget.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  _CalendarState createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    final events = Provider.of<EventProvider>(context).events;

    return Scaffold(
      body: Column(children: <Widget>[
        const Padding(
            padding: EdgeInsets.fromLTRB(0, 60, 0, 10),
            child: Text("Jadwal Page",
                style: TextStyle(
                    fontFamily: 'kanit', fontSize: 18, color: Colors.white))),
        SfCalendar(
          dataSource: EventAktivitasDataSource(events),
          onTap: (details) {
            final provider = Provider.of<EventProvider>(context, listen: false);

            provider.setDate(details.date!);

            showModalBottomSheet(
                context: context, builder: (context) => const TaskWidget());
          },
          todayHighlightColor: Colors.blue[800],
          backgroundColor: Colors.white,
          headerHeight: 50,
          view: CalendarView.month,
          initialSelectedDate: DateTime.now(),
          showNavigationArrow: true,
          cellBorderColor: Colors.transparent,
        ),
      ]),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        animatedIconTheme: const IconThemeData(size: 30),
        childrenButtonSize: 70,
        backgroundColor: const Color.fromRGBO(109, 107, 221, 100),
        visible: true,
        curve: Curves.bounceInOut,
        children: [
          /* SpeedDialChild(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(248, 253, 104, 1)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 12)),
                      fixedSize: MaterialStateProperty.all(const Size(350, 80)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.yellow)))),
                  child: const Text("Obat",
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontSize: 12,
                          color: Colors.black)),
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const Obat()),
                      ))), */
          SpeedDialChild(
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromRGBO(248, 253, 104, 1)),
                      textStyle: MaterialStateProperty.all(
                          const TextStyle(fontSize: 12)),
                      fixedSize: MaterialStateProperty.all(const Size(350, 80)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: const BorderSide(color: Colors.yellow)))),
                  child: const Text("Aktivitas",
                      style: TextStyle(
                          fontFamily: 'Kanit',
                          fontSize: 8,
                          color: Colors.black)),
                  onPressed: () => Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const Aktivitas()),
                      )))
        ],
      ),
    );
  }
}
