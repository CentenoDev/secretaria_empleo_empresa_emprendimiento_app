// lib/screens/formulario_screen.dart
import 'package:flutter/material.dart';

class FormularioScreen extends StatelessWidget {
  const FormularioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Calculamos el ancho y alto de la pantalla
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Formulario de Registro',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 4,
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.08, // Padding adaptable
            vertical: screenHeight * 0.02,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Encabezado del formulario
              Text(
                'Completa tu Información',
                style: TextStyle(
                  fontSize: screenWidth * 0.06,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                'Por favor, completa los campos para continuar',
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: screenHeight * 0.03),

              // Campos del formulario
              _buildTextField(
                  'Fecha de la actividad (d/M/yyyy)', Icons.calendar_today),
              _buildTextField(
                  'Nombre del CPS que diligencia el Formulario', Icons.person),

              _buildDropdownField(
                'Tipo de actividad que se desarrolla',
                ['Interna', 'Externa'],
              ),

              _buildDropdownField(
                'Lugar en donde se desarrolla la actividad',
                ['BIT Tecnologico comuna 7', 'BIT mujeres', 'Otras'],
              ),

              _buildDropdownField(
                'Área que estás visitando',
                [
                  'Área Gestión Empresarial, Coworking, Barra de tareas',
                  'Área Color BIT Lab',
                  'Área estudio Multimedia',
                  'Ninguna de las anteriores'
                ],
              ),

              _buildMultiSelectDropdownField(
                '¿Qué sub-áreas estás visitando?',
                [
                  'Gestión Empresarial',
                  'Coworking',
                  'Ideación',
                  'Prototipado',
                  'Coffee Shop',
                  'Estudio de Diseño',
                  'Impresión 3D',
                  'Robótica y electrónica',
                  'Tecnologías virtuales',
                  'Espacio de video juegos',
                  'Estudio de Grabación',
                  'Estudio de Cine',
                  'Salón Azul',
                  'Salón Naranja',
                  'Ninguna de las anteriores'
                ],
              ),

              _buildDropdownField(
                'Finalidad de su visita al BIT o actividad',
                [
                  'Visita o Recorrido',
                  'Asesoría',
                  'Talleres',
                  'Ruta de Emprendimiento',
                  'Préstamos de espacios',
                  'Uso de las herramientas del BIT',
                  'Socialización de oferta BIT',
                  'Reunión',
                  'Evento',
                  'Otras'
                ],
              ),

              _buildTextField('Nombre del evento', Icons.event),
              _buildTextField(
                  'Nombre completo (nombres y apellidos)', Icons.person),
              _buildTextField('Número de identificación', Icons.assignment_ind),
              _buildTextField('Número de celular', Icons.phone),
              _buildTextField('Correo electrónico', Icons.email),

              _buildDropdownField(
                'Sexo',
                ['Hombre', 'Mujer'],
              ),

              _buildDropdownField(
                'En qué comuna o corregimiento vive',
                [
                  'Comuna 1',
                  'Comuna 2',
                  'Comuna 3',
                  'Comuna 4',
                  'Comuna 5',
                  'Comuna 6',
                  'Comuna 7',
                  'Corregimiento El Llanito',
                  'Corregimiento El Centro',
                  'Corregimiento Cienaga del Opon',
                  'Corregimiento La Fortuna',
                  'Corregimiento Meseta San Rafael',
                  'Corregimiento San Rafael de Chucuri',
                  'Otras'
                ],
              ),

              _buildDropdownField(
                'Tipo de población',
                [
                  'Docente de Colegio',
                  'Docente Universitario',
                  'Estudiantes de Colegio',
                  'Estudiante Universitario',
                  'Emprendedor/Empresario',
                  'Población General',
                  'Otras'
                ],
              ),

              _buildDropdownField('Grupo Etario', ['Selecciona la respuesta']),

              _buildMultiSelectDropdownField(
                '¿Con cuál población vulnerable se reconoce o tiene acreditación?',
                [
                  'Madre cabeza de hogar',
                  'NARP',
                  'Víctima',
                  'Indígena',
                  'ROM',
                  'Adulto Mayor',
                  'Persona con Discapacidad',
                  'Cuidador de persona con discapacidad',
                  'LGBTIQA+',
                  'Campesino',
                  'Persona en proceso de reintegración o reincorporación',
                  'Migrantes',
                  'SRPA',
                  'Ninguno'
                ],
              ),

              _buildCheckboxField(
                '¿Está dispuesto a afirmar que no es candidato ni vocero de candidatos a las elecciones regionales?',
              ),

              _buildCheckboxField(
                'Acepto política de tratamiento de datos de la Alcaldía de Barrancabermeja',
              ),

              _buildCheckboxField(
                'Acepto los Términos y condiciones de inscripción a los cursos de tecnología del BIT',
              ),

              SizedBox(height: screenHeight * 0.04),

              // Botón de generar QR (simulado)
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Acción de generación de QR simulado
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                        EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    backgroundColor: Colors.blueAccent,
                  ),
                  child: const Text(
                    'Crear usuario y generar QR',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Métodos auxiliares para construir campos

  Widget _buildTextField(String label, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.blueAccent),
          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget _buildDropdownField(String label, List<String> options) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
        ),
        items: options.map((option) {
          return DropdownMenuItem<String>(
            value: option,
            child: Text(option),
          );
        }).toList(),
        onChanged: (value) {
          // Acción al seleccionar una opción
        },
      ),
    );
  }

  Widget _buildMultiSelectDropdownField(String label, List<String> options) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: DropdownButtonFormField<String>(
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
        ),
        items: options.map((option) {
          return DropdownMenuItem<String>(
            value: option,
            child: Text(option),
          );
        }).toList(),
        onChanged: (value) {
          // Acción al seleccionar una opción
        },
        isExpanded: true,
      ),
    );
  }

  Widget _buildCheckboxField(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Checkbox(
            value: false, // Valor inicial del checkbox
            onChanged: (value) {
              // Acción cuando el checkbox cambia
            },
          ),
          Expanded(
            child: Text(
              label,
              style: const TextStyle(color: Colors.black87),
            ),
          ),
        ],
      ),
    );
  }
}
