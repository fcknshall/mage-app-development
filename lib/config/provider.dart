import 'package:flutter/cupertino.dart';
import 'event.dart';

class EventProvider extends ChangeNotifier {
  final List<Event> _events = [];

  List<Event> get events => _events;

  DateTime _selectedDate = DateTime.now();

  DateTime get selectDate => _selectedDate;

  void setDate(DateTime date) => _selectedDate = date;

  List<Event> get eventOfSelectedDate => _events;

  void addEvent(Event event) {
    _events.add(event);

    notifyListeners();
  }
}
