import 'package:flutter/material.dart';

class EmprendimientoScreen extends StatelessWidget {
  const EmprendimientoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Emprendimiento',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.2,
            shadows: [
              Shadow(
                color: Colors.black26,
                offset: Offset(2, 2),
                blurRadius: 4,
              ),
            ],
          ),
        ),
        backgroundColor: Colors.teal, // Color específico para Emprendimiento
        elevation: 4,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color(0xFFE0F7FA)
            ], // Fondo degradado para Emprendimiento
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título principal con contexto de Emprendimiento
            const Text(
              'Bienvenido a Emprendimiento\nApoyo y Desarrollo',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
                letterSpacing: 1.1,
                shadows: [
                  Shadow(
                    color: Colors.black12,
                    offset: Offset(2, 2),
                    blurRadius: 6,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: 20),

            // Primera Sección de Tarjetas
            const Text(
              'Estrategias de Emprendimiento',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildAnimatedCard('Ruta E', 'Disponible', Colors.teal),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.tealAccent),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.blueGrey),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Segunda Sección de Tarjetas
            const Text(
              'Programas',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.tealAccent),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.greenAccent),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.blueAccent),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Tercera Sección de Tarjetas
            const Text(
              'Conoce el Emprendimiento',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black54,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.orangeAccent),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.cyanAccent),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.lightGreenAccent),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Método para construir tarjetas animadas
  Widget _buildAnimatedCard(String title, String subtitle, Color color) {
    return GestureDetector(
      onTap: () {}, // Acción adicional si es necesario
      child: StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          double scale = 1.0;

          return AnimatedScale(
            scale: scale,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeOutBack,
            child: GestureDetector(
              onTapDown: (_) {
                setState(() {
                  scale = 0.95;
                });
              },
              onTapUp: (_) {
                setState(() {
                  scale = 1.0;
                });
              },
              onTapCancel: () {
                setState(() {
                  scale = 1.0;
                });
              },
              child: Container(
                width: 150,
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      blurRadius: 15,
                      spreadRadius: 1,
                      offset: const Offset(5, 5),
                    ),
                    BoxShadow(
                      color: Colors.white.withOpacity(0.2),
                      blurRadius: 15,
                      spreadRadius: -8,
                      offset: const Offset(-5, -5),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
