import 'package:flutter/material.dart';

class InternacionalizacionScreen extends StatelessWidget {
  const InternacionalizacionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Internacionalización',
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
        backgroundColor:
            Colors.indigo, // Color específico para Internacionalización
        elevation: 4,
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white,
              Color(0xFFE3EAFD)
            ], // Fondo degradado para Internacionalización
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Título principal con contexto de Internacionalización
            const Text(
              'Bienvenido a Internacionalización\nExpande tus Fronteras',
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
              'Estrategias de Internacionalización',
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
                      'Promoción de Empresas', 'Disponible', Colors.indigo),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.blueAccent),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.lightBlueAccent),
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
                      'Próximamente', 'Próximamente', Colors.indigoAccent),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.blue),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.cyan),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Tercera Sección de Tarjetas
            const Text(
              'Conoce la Internacionalización',
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
                      'Próximamente', 'Próximamente', Colors.lightBlue),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.indigoAccent),
                  _buildAnimatedCard(
                      'Próximamente', 'Próximamente', Colors.blueGrey),
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
