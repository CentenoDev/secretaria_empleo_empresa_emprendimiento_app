import 'package:flutter/material.dart';
import 'package:secretaria_empleo_empresa_emprendimiento_app/screens/bit_screen.dart';
import 'package:secretaria_empleo_empresa_emprendimiento_app/screens/despacho_screen.dart';
import 'package:secretaria_empleo_empresa_emprendimiento_app/screens/empleo_screen.dart';
import 'package:secretaria_empleo_empresa_emprendimiento_app/screens/emprendimiento_screen.dart';
import 'package:secretaria_empleo_empresa_emprendimiento_app/screens/forcap_screen.dart';
import 'package:secretaria_empleo_empresa_emprendimiento_app/screens/formulario_screen.dart';
import 'package:secretaria_empleo_empresa_emprendimiento_app/screens/home_screen.dart';
import 'package:secretaria_empleo_empresa_emprendimiento_app/screens/internacionalizacion_screen.dart';
import 'package:secretaria_empleo_empresa_emprendimiento_app/screens/login_screen.dart';
import 'package:secretaria_empleo_empresa_emprendimiento_app/screens/promocion_empresarial.dart';
import 'package:secretaria_empleo_empresa_emprendimiento_app/screens/splash_screen.dart'; // Importa FormularioScreen

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const LoginScreen(),
        '/bit': (context) => const BitScreen(),
        '/emprendimiento': (context) => const EmprendimientoScreen(),
        '/forcap': (context) => const ForcapScreen(),
        '/despacho': (context) => const DespachoScreen(),
        '/empleo': (context) => const EmpleoScreen(),
        '/internacionalizacion': (context) =>
            const InternacionalizacionScreen(),
        '/promocion_empresarial': (context) =>
            const PromocionEmpresarialScreen(),
        '/formulario': (context) =>
            const FormularioScreen(), // Nueva ruta del formulario
      },
    );
  }
}
