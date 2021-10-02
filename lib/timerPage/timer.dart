import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Timer extends StatefulWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(73, 97, 222, 100)),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(30, 100, 100, 0),
                child: CustomTimer(
                    from: const Duration(days: 14),
                    to: const Duration(seconds: 0),
                    builder: (CustomTimerRemainingTime remaining) {
                      return Text(
                          "Semangat!\nHanya\n${remaining.days} Hari ${remaining.hours} jam ${remaining.minutes} Menit",
                          style: (const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          )));
                    }))
          ],
        ),
      ),
    );
  }
}
