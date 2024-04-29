import 'package:flutter/material.dart';
import 'package:timezone/data/latest.dart' as tz;

import 'package:tugas_tracker/screens/main_menu.dart';

void main() {
  tz.initializeTimeZones();
  runApp(const MyApp());
}
