
import 'package:flutter/material.dart';

// Importamos la pantalla principal donde está el diseño de la aplicación.
import 'package:semana6sb/diseno/home_screen.dart';

// Esta es la función que inicia la aplicación.
void main() {
  // Ejecutamos la aplicación llamando al widget principal MyApp.
  runApp(const MyApp());
}

// Creamos el widget principal que contiene la configuración de la aplicación.
class MyApp extends StatelessWidget {

  // Constructor de la clase que permite recibir una key.
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    // MaterialApp permite configurar y mostrar nuestra aplicación.
    return MaterialApp(

      // Ocultamos el banner que indica que estamos en modo de desarrollo.
      debugShowCheckedModeBanner: false,

      // Indicamos que HomeScreen será la primera pantalla que se mostrará.
      home: const HomeScreen(),
    );
  }
}

