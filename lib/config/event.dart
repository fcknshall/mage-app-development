import 'package:flutter/material.dart';

class Event {
  final String title;
  final String description;
  final DateTime from;
  final DateTime to;
  final String? location;
  final Color backgroundColor;
  final bool isAllDay;
  final bool isObat;
  final String? durasi;
  final String? durasiType;
  final String? frekuensi;
  final String? frekuensiType;
  final String? jenisObat;
  final String? status;

  const Event({
    required this.title,
    required this.description,
    required this.from,
    required this.to,
    this.isObat = false,
    this.durasiType,
    this.durasi,
    this.frekuensi,
    this.frekuensiType,
    this.location,
    this.status,
    this.jenisObat,
    this.backgroundColor = Colors.lightBlue,
    this.isAllDay = false,
  });
}
