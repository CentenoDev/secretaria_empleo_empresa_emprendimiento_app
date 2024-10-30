// lib/widgets/app_drawer.dart
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    // Nombre ficticio del usuario
    const String userName = 'Juan Pérez';

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fondo_drawer.png'),
                fit: BoxFit.cover, // Ajustar la imagen al espacio disponible
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.7),
                    Colors.transparent,
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Bienvenido,',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      shadows: [
                        Shadow(
                          offset: Offset(1, 1),
                          blurRadius: 4,
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    userName, // Mostrar el nombre ficticio del usuario
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(2, 2),
                          blurRadius: 6,
                          color: Colors.black87,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          _buildDrawerItem(
            icon: Icons.home,
            text: 'Inicio',
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: Icons.settings,
            text: 'Configuración',
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: Icons.person,
            text: 'Mi perfil',
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: Icons.help,
            text: 'Ayuda',
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: Icons.info,
            text: 'Políticas y Términos',
            onTap: () => Navigator.pop(context),
          ),
          _buildDrawerItem(
            icon: Icons.logout,
            text: 'Cerrar sesión',
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  // Widget para construir cada ítem del Drawer con un diseño personalizado
  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.blueGrey[700],
          size: 26,
        ),
        title: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        onTap: onTap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        tileColor: Colors.blueGrey.withOpacity(0.05),
        dense: true,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        horizontalTitleGap: 0.0,
        selectedTileColor: Colors.blueAccent.withOpacity(0.2),
        selectedColor: Colors.blueAccent,
      ),
    );
  }
}
