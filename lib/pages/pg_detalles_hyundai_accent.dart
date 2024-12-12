import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PGDetalles_Hyundai_accent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color.fromRGBO(163, 179, 183, 1), // Fondo del AppBar
            floating: false, // No flota al desplazarse
            pinned: true, // Permanece estático
            expandedHeight: 50.0, // Tamaño estándar del AppBar
            flexibleSpace: FlexibleSpaceBar(
              // titlePadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              titlePadding: const EdgeInsets.only(left: 50.0, right: 10.0, top: 10.0, bottom: 10.0),

              title: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'BUSCAR',
                          hintStyle: TextStyle(
                            color: Color(0xFF203540),
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Color(0xFF203540),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: const Color.fromRGBO(163, 179, 183, 1), // Fondo del contenido
              // padding: const EdgeInsets.all(16.0),
              padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 0.0, bottom: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 6,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Center(
                          child: Image.asset(
                            "assets/images/carro_hyundai_accent.png",
                            height: 200,
                          ),
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start, // Alinea todo a la izquierda
                          children: [
                            SizedBox(height: 16),
                            Text(
                              'Hyundai Accent',
                              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'S/. 280.60',
                              style: TextStyle(fontSize: 20, color: Colors.green),
                            ),
                            SizedBox(height: 16),
                            Text(
                              'Especificaciones principales:',
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text('- Motor 1.6L: Motor potente y eficiente que ofrece un excelente rendimiento de combustible.'),
                            Text('- Equipamiento de confort: Pantalla táctil de 7 pulgadas (compatible con Android Auto y Apple CarPlay), aire acondicionado, y controles al volante.'),
                            Text('- Seguridad: Doble bolsa de aire, frenos ABS, cámara de reversa y sensores de estacionamiento.'),
                            Text('- Diseño: Exterior elegante y moderno, con un interior espacioso y cómodo para 5 pasajeros.'),
                          ],
                        )

                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Descripción breve:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'El Hyundai Accent es un sedán compacto que combina eficiencia, confort y tecnología avanzada. Con su motor económico y su diseño aerodinámico, es el compañero perfecto para tus viajes urbanos y de largo recorrido. Disfruta de un interior cómodo, sistemas de seguridad avanzados y una experiencia de conducción suave y divertida. ¡Descubre el Hyundai Accent y experimenta lo que significa conducir con estilo y confianza!',
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Acción del botón
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      ),
                      child: const Text(
                        'Reservar Hyundai Accent',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Center(
                    child: GestureDetector(
                      onTap: () async {
                        const url = 'https://youtu.be/ScNOQzyQWMc?si=6I8-oN4AJG63OVyR';
                        final Uri uri = Uri.parse(url); // Convertir el string a Uri
                        if (await canLaunchUrl(uri)) {  // Usar canLaunchUrl
                          await launchUrl(uri);         // Usar launchUrl
                        } else {
                          throw 'No se pudo abrir $url';
                        }
                      },
                      child: Image.network(
                        'https://img.youtube.com/vi/ScNOQzyQWMc/maxresdefault.jpg',
                        height: 200,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
