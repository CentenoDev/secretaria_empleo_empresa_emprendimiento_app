import 'package:flutter/material.dart';

class EmpleoScreen extends StatelessWidget {
  const EmpleoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Empleo',
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
        backgroundColor: Colors.redAccent, // Color específico para Empleo
        elevation: 4,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color(0xFFFFEBEE)
            ], // Fondo degradado para Empleo
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título principal con contexto de Empleo
            const Text(
              'Bienvenido a Empleo\nOportunidades y Crecimiento',
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
              'Estrategias',
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
                      'Formalización Laboral', 'Disponible', Colors.redAccent),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.deepOrangeAccent),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.orangeAccent),
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
                      'Próximamente', 'Próximamente', Colors.redAccent),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.pinkAccent),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.deepOrange),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Tercera Sección de Tarjetas
            const Text(
              'Oportunidades en Empleo',
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
                      'Próximamente', 'Próximamente', Colors.redAccent),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.deepOrangeAccent),
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
