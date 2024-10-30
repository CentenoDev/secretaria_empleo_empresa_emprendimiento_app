import 'package:flutter/material.dart';

final List<Map<String, dynamic>> options = [
  {
    'title': 'BIT',
    'color': Colors.blueAccent,
    'icon': Icons.smart_toy_outlined,
    'onTap': (BuildContext context) {
      Navigator.pushNamed(context, '/bit'); // Redirige a BIT
    },
  },
  {
    'title': 'Emprendimiento',
    'color': Colors.teal,
    'icon': Icons.business_center,
    'onTap': (BuildContext context) {
      Navigator.pushNamed(
          context, '/emprendimiento'); // Redirige a Emprendimiento
    },
  },
  {
    'title': 'FORCAP',
    'color': Colors.orangeAccent,
    'icon': Icons.query_stats_rounded,
    'onTap': (BuildContext context) {
      Navigator.pushNamed(context, '/forcap'); // Redirige a FORCAP
    },
  },
  {
    'title': 'Despacho',
    'color': Colors.purpleAccent,
    'icon': Icons.maps_home_work_outlined,
    'onTap': (BuildContext context) {
      Navigator.pushNamed(context, '/despacho'); // Redirige a Despacho
    },
  },
  {
    'title': 'Empleo',
    'color': Colors.redAccent,
    'icon': Icons.work_outline,
    'onTap': (BuildContext context) {
      Navigator.pushNamed(context, '/empleo'); // Redirige a Empleo
    },
  },
  {
    'title': 'Internacionalización',
    'color': Colors.indigo,
    'icon': Icons.public,
    'onTap': (BuildContext context) {
      Navigator.pushNamed(
          context, '/internacionalizacion'); // Redirige a Internacionalización
    },
  },
  {
    'title': 'Promoción Empresarial',
    'color': Colors.cyan,
    'icon': Icons.local_offer_sharp,
    'onTap': (BuildContext context) {
      Navigator.pushNamed(context,
          '/promocion_empresarial'); // Redirige a Promoción Empresarial
    },
  },
];
