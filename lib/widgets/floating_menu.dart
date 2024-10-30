import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FloatingMenu extends StatelessWidget {
  const FloatingMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      icon: Icons.add,
      activeIcon: Icons.close,
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      activeBackgroundColor: Colors.red,
      activeForegroundColor: Colors.white,
      buttonSize: const Size(56.0, 56.0), // Tamaño del botón
      visible: true,
      closeManually: false,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      shape: const CircleBorder(),
      children: [
        SpeedDialChild(
          child: const Icon(Icons.qr_code,
              color: Colors.white), // Icono de crear QR
          backgroundColor: Colors.green,
          label: 'Crear QR',
          labelStyle: const TextStyle(fontSize: 18.0),
          onTap: () {
            // Acción al seleccionar "Crear QR"
          },
        ),
        SpeedDialChild(
          child: const Icon(Icons.qr_code_scanner,
              color: Colors.white), // Icono de escanear QR
          backgroundColor: Colors.orange,
          label: 'Escanear QR',
          labelStyle: const TextStyle(fontSize: 18.0),
          onTap: () {
            // Acción al seleccionar "Escanear QR"
          },
        ),
      ],
    );
  }
}
