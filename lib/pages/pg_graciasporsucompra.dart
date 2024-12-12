import 'package:flutter/material.dart';

void main() {
  runApp(VesuloApp());
}

class VesuloApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GraciasPorSuCompra(),
    );
  }
}

class GraciasPorSuCompra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vesulo'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: Center(
              child: Text(
                '¿Necesitas ayuda?\nLlámanos al 967 043 424',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildStepCircle(1, isCompleted: true),
                _buildStepDivider(),
                _buildStepCircle(2, isCompleted: true),
                _buildStepDivider(),
                _buildStepCircle(3, isCompleted: true),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Gracias por su compra',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Gracias por tu compra. Hemos recibido tu pago y confirmado el alquiler de tu vehículo. A continuación, encontrarás un resumen de tu orden con los detalles de la reserva.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            Table(
              columnWidths: const {
                0: FlexColumnWidth(3),
                1: FlexColumnWidth(1),
              },
              border: TableBorder.all(color: Colors.grey, width: 0.5),
              children: [
                _buildTableRow('PRODUCTO', 'PRECIO', isHeader: true),
                _buildTableRow('HYUNDAI GRAND I10', 'S/. 220.70'),
                _buildTableRow('TOYOTA YARIS', 'S/. 174.90'),
                _buildTableRow('HYUNDAI ACCENT', 'S/. 280.60'),
                _buildTableRow('TOTAL', 'S/. 676.20', isHeader: true),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Si tienes alguna consulta o necesitas asistencia adicional, no dudes en contactarnos. ¡Te deseamos un excelente viaje!',
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Acción al volver al catálogo
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  backgroundColor: Colors.blueGrey,
                ),
                child: const Text(
                  'Volver al catálogo',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepCircle(int step, {bool isCompleted = false}) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        color: isCompleted ? Colors.blueGrey : Colors.grey,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          '$step',
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildStepDivider() {
    return Container(
      width: 20,
      height: 2,
      color: Colors.grey,
    );
  }

  TableRow _buildTableRow(String col1, String col2, {bool isHeader = false}) {
    return TableRow(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            col1,
            style: TextStyle(
              fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
              fontSize: isHeader ? 16 : 14,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            col2,
            style: TextStyle(
              fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
              fontSize: isHeader ? 16 : 14,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
