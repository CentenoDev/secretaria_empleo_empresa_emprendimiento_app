// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:secretaria_empleo_empresa_emprendimiento_app/data/options_list.dart';
import '../widgets/option_card.dart';
import '../widgets/app_drawer.dart';
import '../widgets/calendar_icon.dart'; // Importar CalendarIcon
import '../widgets/user_icon.dart'; // Importar UserIcon
import '../widgets/floating_menu.dart'; // Importar el FloatingMenu

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Bienvenido',
          style: TextStyle(
            color: Colors.black87,
            fontSize: screenWidth * 0.06, // Tamaño adaptativo de fuente
            fontWeight: FontWeight.w600,
          ),
        ),
        iconTheme: const IconThemeData(color: Colors.black87),
        actions: const [
          CalendarIcon(), // Usar el widget CalendarIcon
          UserIcon(), // Usar el widget UserIcon
        ],
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04,
          vertical: screenHeight * 0.02,
        ),
        child: Center(
          child: GridView.builder(
            itemCount: options.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent:
                  screenWidth * 0.45, // Máximo ancho de las tarjetas
              mainAxisSpacing: screenHeight * 0.02,
              crossAxisSpacing: screenWidth * 0.04,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              final option = options[index];
              return OptionCard(
                title: option['title'],
                color: option['color'],
                icon: option['icon'],
                onTap: option['onTap'],
              );
            },
          ),
        ),
      ),
      floatingActionButton: const FloatingMenu(), // Usar el widget FloatingMenu
    );
  }
}
