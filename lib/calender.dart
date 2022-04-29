import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
class cal extends StatefulWidget {
  const cal({Key? key}) : super(key: key);

  @override
  State<cal> createState() => _calState();
}

class _calState extends State<cal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: TableCalendar(
          focusedDay: DateTime.now(),
          firstDay: DateTime(1990),
          lastDay: DateTime(2050),
        ),
      ),
    );
  }
}
