
import 'package:flutter/material.dart';

// Creamos la pantalla principal de nuestra aplicación.
class HomeScreen extends StatelessWidget {

  // Constructor de la pantalla que permite recibir una key.
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // Scaffold proporciona la estructura principal de la pantalla.
    return Scaffold(

      // Creamos la barra superior de la aplicación.
      appBar: AppBar(

        // Colocamos el título en la parte superior.
        title: const Text('Hola UAE'),

        // Agregamos un botón de información en la barra superior.
        actions: [
          IconButton(

            // Seleccionamos el icono de información.
            icon: const Icon(Icons.info_outline),

            // Esta acción se ejecuta cuando presionamos el icono.
            onPressed: () {
              // Mostramos una ventana con información de la aplicación.
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Información'),
                  content: const Text('Bienvenido a la aplicación UAE'),

                  // Agregamos un botón para cerrar la ventana.
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('Cerrar'),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),

      // Creamos el contenido principal de la pantalla.
      body: Center(

        // Utilizamos Column para colocar los elementos uno debajo de otro.
        child: Column(

          // Centramos los elementos verticalmente.
          mainAxisAlignment: MainAxisAlignment.center,

          // Aquí colocamos los elementos que aparecerán en pantalla.
          children: [

            // Mostramos un texto de bienvenida en el centro.
            const Text(
              'Hola UAE',
              style: TextStyle(fontSize: 20),
            ),

            // Dejamos un espacio de 20 píxeles entre el texto y el botón.
            const SizedBox(height: 20),

            // Creamos el botón que permitirá mostrar un mensaje.
            ElevatedButton(

              // Esta acción se ejecuta cuando presionamos el botón.
              onPressed: () {

                // Mostramos un mensaje en la parte inferior de la pantalla.
                ScaffoldMessenger.of(context).showSnackBar(

                  // Definimos el mensaje que aparecerá al presionar el botón.
                  const SnackBar(
                    content: Text('¡Bienvenido a la UAE!'),
                  ),
                );
              },

              // Colocamos el texto que tendrá el botón.
              child: const Text('Saludar'),
            ),
          ],
        ),
      ),
    );
  }
}
