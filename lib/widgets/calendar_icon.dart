// lib/widgets/calendar_icon.dart
import 'package:flutter/material.dart';
import '../screens/event_calendar_screen.dart';

class CalendarIcon extends StatelessWidget {
  const CalendarIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.calendar_today, color: Colors.black87),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const EventCalendarScreen()),
        );
      },
    );
  }
}
