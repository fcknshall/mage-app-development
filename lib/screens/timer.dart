import 'package:custom_timer/custom_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

class Timer extends StatefulWidget {
  const Timer({Key? key}) : super(key: key);

  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000),
    );

    animationController.dispose();
    super.initState();
    animationController.forward();
    animationController.addListener(() {
      setState(() {
        if (animationController.status == AnimationStatus.completed) {
          animationController.repeat();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(73, 97, 222, 100)),
      home: Scaffold(
        body: Column(
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.fromLTRB(30, 100, 80, 0),
                child: CustomTimer(
                    from: const Duration(days: 14),
                    to: const Duration(seconds: 0),
                    onBuildAction: CustomTimerAction.auto_start,
                    builder: (CustomTimerRemainingTime remaining) {
                      return Text(
                          "Semangat!\nHanya\n${remaining.days} Hari ${remaining.hours} jam ${remaining.minutes} Menit",
                          style: (const TextStyle(
                            color: Color.fromRGBO(227, 248, 251, 1),
                            fontSize: 26,
                            fontFamily: 'Kanit',
                          )));
                    })),
            Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: AnimatedBuilder(
                  animation: animationController,
                  builder: (_, child) {
                    return Transform.rotate(
                      angle: animationController.value * 2 * math.pi,
                      child: child,
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/timerpage/hourglass1.png'),
                    ],
                  ),
                )),
            const Padding(
                padding: EdgeInsets.fromLTRB(30, 70, 100, 0),
                child: Text(
                  "Sampai Isolasi Mandiri \nSelesai",
                  style: TextStyle(
                    color: Color.fromRGBO(227, 248, 251, 1),
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontFamily: 'Kanit',
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
