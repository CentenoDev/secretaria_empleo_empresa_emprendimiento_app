// lib/screens/event_calendar_screen.dart
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class EventCalendarScreen extends StatefulWidget {
  const EventCalendarScreen({super.key});

  @override
  _EventCalendarScreenState createState() => _EventCalendarScreenState();
}

class _EventCalendarScreenState extends State<EventCalendarScreen> {
  // Mapa de eventos con diferentes tipos para personalización
  final Map<DateTime, List<Map<String, String>>> _events = {
    DateTime.utc(2024, 10, 20): [
      {
        'title': 'Evento de Networking',
        'description': 'Conoce a profesionales del sector.',
        'location': 'Centro de Convenciones',
        'type': 'networking'
      },
    ],
    DateTime.utc(2024, 10, 22): [
      {
        'title': 'Taller de Emprendimiento',
        'description': 'Aprende a lanzar tu propio negocio.',
        'location': 'Sala 3, Edificio A',
        'type': 'workshop'
      },
    ],
    DateTime.utc(2024, 10, 25): [
      {
        'title': 'Conferencia sobre empleo',
        'description': 'Discusión sobre oportunidades laborales.',
        'location': 'Auditorio Principal',
        'type': 'conference'
      },
    ],
  };

  // Colores y iconos según el tipo de evento
  final Map<String, Color> _eventColors = {
    'networking': Colors.orangeAccent,
    'workshop': Colors.blueAccent,
    'conference': Colors.greenAccent,
  };

  final Map<String, IconData> _eventIcons = {
    'networking': Icons.people,
    'workshop': Icons.lightbulb,
    'conference': Icons.mic,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendario de Eventos'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TableCalendar(
          firstDay: DateTime.utc(2024, 1, 1),
          lastDay: DateTime.utc(2025, 1, 1),
          focusedDay: DateTime.now(),
          eventLoader: (day) => _events[day] ?? [],
          calendarStyle: const CalendarStyle(
            todayDecoration: BoxDecoration(
              color: Colors.blueAccent,
              shape: BoxShape.circle,
            ),
            markerDecoration: BoxDecoration(
              color: Colors.redAccent,
              shape: BoxShape.circle,
            ),
          ),
          onDaySelected: (selectedDay, focusedDay) {
            if (_events.containsKey(selectedDay)) {
              _showEventsDialog(selectedDay);
            }
          },
        ),
      ),
    );
  }

  void _showEventsDialog(DateTime day) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            'Eventos del ${day.day}/${day.month}/${day.year}',
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: (_events[day] ?? []).map((event) {
              final eventType = event['type'] ?? 'networking';
              final color = _eventColors[eventType] ?? Colors.grey;
              final icon = _eventIcons[eventType] ?? Icons.event;

              return Card(
                color: color.withOpacity(0.1),
                margin: const EdgeInsets.symmetric(vertical: 8.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 4,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(icon, color: color, size: 28),
                          const SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              event['title']!,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: color,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        event['description']!,
                        style: const TextStyle(
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Icon(Icons.location_on, size: 18, color: color),
                          const SizedBox(width: 5),
                          Expanded(
                            child: Text(
                              event['location']!,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.black54,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text(
                'Cerrar',
                style: TextStyle(color: Colors.blueAccent),
              ),
            ),
          ],
        );
      },
    );
  }
}
