import 'package:flutter/material.dart';
import 'package:myapp/pages/pg_iniciosesion.dart';

class Bienvenida extends StatelessWidget {
  const Bienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    // Esperamos 2 segundos antes de navegar a PaginaCatalogo
    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const InicioSesion()),
      );
    });

    return const Scaffold(
      backgroundColor: Color.fromRGBO(163, 179, 183, 1),
      body: SafeArea(
        child: Column(
          children: [
            Spacer(flex: 2), // Espacio para bajar la imagen
            Center(child: MyImage()), // Imagen centrada en el eje horizontal
            Spacer(flex: 1), // Espacio adicional entre la imagen y el texto
            Padding(
              padding:
                  EdgeInsets.only(bottom: 10), // Ajusta el padding inferior
              child: MyBienvenida(),
            ),
          ],
        ),
      ),
    );
  }
}

class MyBienvenida extends StatelessWidget {
  const MyBienvenida({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
          bottom: 5), // Agrega 5 píxeles de padding en la parte inferior
      child: Center(
        child: Text(
          'Alquila el carro de tus sueños',
          style: TextStyle(
            color: Color.fromARGB(255, 32, 53, 64),
            fontSize: 20,
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
            fontFamily: 'Roboto',
          ),
          textAlign: TextAlign.center,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          softWrap: true,
        ),
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtener el tamaño de la pantalla
    double width = MediaQuery.of(context).size.width; // Ancho de la pantalla
    double height = MediaQuery.of(context).size.height; // Altura de la pantalla

    return Container(
      width: width * 0.6, // 60% del ancho de la pantalla
      height: height * 0.4, // 40% de la altura de la pantalla
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/logo.png'), // Ruta de la imagen
          fit: BoxFit
              .contain, // Ajuste para que la imagen no se recorte ni distorsione
        ),
      ),
    );
  }
}
