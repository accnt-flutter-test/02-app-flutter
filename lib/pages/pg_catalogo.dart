import 'package:flutter/material.dart';
import 'package:myapp/pages/pg_detalles_chevrolet_aveo.dart';
import 'package:myapp/pages/pg_detalles_chevrolet_spark.dart';
import 'package:myapp/pages/pg_detalles_chevrolet_tracker.dart';
import 'package:myapp/pages/pg_detalles_ford_ecosport.dart';
import 'package:myapp/pages/pg_detalles_honda_crv.dart';
import 'package:myapp/pages/pg_detalles_hyundai_accent.dart';
import 'package:myapp/pages/pg_detalles_hyundai_i10.dart';
import 'package:myapp/pages/pg_detalles_mazda_cx5.dart';
import 'package:myapp/pages/pg_detalles_mitsubishi_mirage.dart';
import 'package:myapp/pages/pg_detalles_nissan_march.dart';
import 'package:myapp/pages/pg_detalles_nissan_versa.dart';
import 'package:myapp/pages/pg_detalles_suzuki_vitara.dart';
import 'package:myapp/pages/pg_detalles_toyota_yaris.dart';

class PaginaCatalogo extends StatelessWidget {
  PaginaCatalogo({super.key});

  final List<Car> cars = [
    Car("Chevrolet Aveo", "Auto", 5, 160.00, 4.0, "assets/images/carro_chevrolet_aveo.png", PGDetalles_Chevrolet_aveo()),
    Car("Chevrolet Spark", "Auto", 5, 140.00, 4.0, "assets/images/carro_chevrolet_spark.png", PGDetalles_Chevrolet_spark()),
    Car("Chevrolet Tracker", "Auto", 5, 240.00, 4.0, "assets/images/carro_chevrolet_tracker.png", PGDetalles_Chevrolet_tracker()),
    Car("Ford Ecosport", "Auto", 5, 230.00, 4.0, "assets/images/carro_ford_ecosport.png", PGDetalles_Ford_ecosport()),
    Car("Honda CR-V", "Auto", 5, 250.00, 4.0, "assets/images/carro_honda_crv.png", PGDetalles_Honda_crv()),
    Car("Hyundai Accent", "Auto", 5, 280.60, 5.0, "assets/images/carro_hyundai_accent.png", PGDetalles_Hyundai_accent()),
    Car("Hyundai Grand I10", "Auto", 5, 220.70, 4.0, "assets/images/carro_hyundai_i10.png", PGDetalles_Hyundai_i10()),
    Car("Mazda CX-5", "Auto", 5, 270.00, 4.0, "assets/images/carro_mazda_cx5.png", PGDetalles_Mazda_cx5()),
    Car("Mitsubishi Mirage", "Auto", 5, 150.00, 4.0, "assets/images/carro_mitsubishi_mirage.png", PGDetalles_Mitsubishi_mirage()),
    Car("Nissan March", "Auto", 5, 150.00, 4.0, "assets/images/carro_nissan_march.png", PGDetalles_Nissan_march()),
    Car("Nissan Versa", "Auto", 5, 170.00, 4.0, "assets/images/carro_nissan_versa.png", PGDetalles_Nissan_versa()),
    Car("Suzuki Vitara", "Auto", 5, 250.00, 4.0, "assets/images/carro_suzuki_vitara.png", PGDetalles_Suzuki_vitara()),
    Car("Toyota Yaris", "Man", 5, 174.90, 3.5, "assets/images/carro_toyota_yaris.png", PGDetalles_Toyota_yaris()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Esto elimina la flecha de retroceso
        backgroundColor: const Color(0xFFA3B3B7), // Fondo del AppBar
        title: Container(
          height: 57,
          padding:
              const EdgeInsets.symmetric(horizontal: 20.0), // Espaciado interno
          decoration: BoxDecoration(
            color: Colors.white, // Fondo del rectángulo
            borderRadius: BorderRadius.circular(10.0), // Bordes redondeados
          ),
          child: const Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'BUSCAR',
                    hintStyle: TextStyle(
                      color: Color(0xFF203540), // Color del texto de sugerencia
                      fontSize: 20.0, // Tamaño del texto de sugerencia
                      fontWeight: FontWeight.bold,
                    ),
                    border: InputBorder.none, // Sin borde para el TextField
                  ),
                ),
              ),
              Icon(
                Icons.search,
                color: Color(0xFF203540), // Color del icono
              ),
            ],
          ),
        ),
      ),
      body: Container(
        color:
            const Color(0xFFA3B3B7), // Cambia aquí el color del fondo del body
        child: Column(
          children: [
            // Filters Row
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Cambié para usar imágenes dinámicas
                  FilterChipWidget(
                    label: "5",
                    imagePath:
                        "assets/images/usuario.png", // Ruta de la imagen dinámica
                  ),
                  const SizedBox(width: 8), // Separación entre los chips
                  FilterChipWidget(
                    label: "8",
                    imagePath:
                        "assets/images/usuario.png", // Ruta de la imagen dinámica
                  ),
                  const SizedBox(width: 8),
                  FilterChipWidget(
                    label: "Auto",
                    imagePath:
                        "assets/images/cambios.png", // Ruta de la imagen dinámica
                  ),
                  const SizedBox(width: 8),
                  FilterChipWidget(
                    label: "Man",
                    imagePath:
                        "assets/images/cambios.png", // Ruta de la imagen dinámica
                  ),
                  const SizedBox(width: 8),
                  FilterChipWidget(
                    label: "5",
                    imagePath:
                        "assets/images/estrellas.png", // Ruta de la imagen dinámica
                  ),
                  const SizedBox(width: 8),
                  FilterChipWidget(
                    label: "4",
                    imagePath:
                        "assets/images/estrellas.png", // Ruta de la imagen dinámica
                  ),
                  // Añadir más chips según sea necesario
                ],
              ),
            ),

            // Car List
            Expanded(
              child: ListView.builder(
                itemCount: cars.length,
                itemBuilder: (context, index) {
                  return CarCard(car: cars[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Car {
  final String name;
  final String transmission;
  final int seats;
  final double price;
  final double rating;
  final String imagePath;
  final Widget detailsPage; // Página de detalles del carro

  // Car(this.name, this.transmission, this.seats, this.price, this.rating, this.imagePath);
  Car(this.name, this.transmission, this.seats, this.price, this.rating,
      this.imagePath, this.detailsPage);
}

class CarCard extends StatelessWidget {
  final Car car;

  CarCard({required this.car});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        height: 163, // Aumenta la altura de la tarjeta aquí
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
          bottom: 10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Imagen del auto
            SizedBox(
              width: 140, // Ancho máximo de la imagen
              height: 140, // Alto máximo de la imagen
              child: Image.asset(
                car.imagePath, // Ruta de la imagen personalizada
                fit: BoxFit.contain, // Ajusta la imagen proporcionalmente
              ),
            ),
            const SizedBox(width: 20), // Espacio entre la imagen y el texto
            // Información del auto
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    car.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      const Icon(Icons.people, size: 16, color: Colors.grey),
                      const SizedBox(width: 5),
                      Text('${car.seats}'),
                      const SizedBox(width: 10),
                      const Icon(Icons.settings, size: 16, color: Colors.grey),
                      const SizedBox(width: 5),
                      Text(car.transmission),
                      const SizedBox(width: 10),
                      const Icon(Icons.star, size: 16, color: Colors.amber),
                      const SizedBox(width: 5),
                      Text('${car.rating}'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'S/. ${car.price.toStringAsFixed(2)}',
                    style: const TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(height: 5),
                  ElevatedButton(
                    onPressed: () {
                      // Navegar directamente a la página de detalles del carro
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => car.detailsPage),
                      );
                    },
                    child: Text(
                      'Ver más detalles',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF203540),
                      side: const BorderSide(
                        color: Color(0xFF203540),
                        width: 2,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget del FilterChip
class FilterChipWidget extends StatelessWidget {
  final String label;
  final String imagePath;

  FilterChipWidget({required this.label, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Row(
        children: [
          Image.asset(
            imagePath,
            width: 20,
            height: 20,
          ),
          const SizedBox(width: 2),
          Text(
            label,
            style: const TextStyle(
              color: Color(0xFF203540),
              fontSize: 19,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xFFFDFFFF),
      padding: const EdgeInsets.symmetric(
          horizontal: 0, vertical: 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(
            color: Color.fromARGB(0, 253, 255, 255),
            width: 0),
      ),
      showCheckmark:
          false,
      onSelected: (bool selected) {
        // Acción cuando el chip es seleccionado o deseleccionado
        print('$label chip selected: $selected');
      },
    );
  }
}
