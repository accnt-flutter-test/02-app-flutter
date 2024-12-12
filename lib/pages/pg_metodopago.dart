import 'package:flutter/material.dart';

class MetodoDePago extends StatelessWidget {
  MetodoDePago({Key? key}) : super(key: key);

  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvcController = TextEditingController();
  final TextEditingController cardHolderController = TextEditingController();
  final TextEditingController dniController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(193, 204, 207, 1), // Fondo general del Scaffold
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 20.0),
              decoration: const BoxDecoration(
                // color: Color(0xFF2E4854), // Fondo del AppBar
                border: Border(
                  bottom: BorderSide(
                    color: Color.fromRGBO(32, 53, 64, 1),
                    width: 2.0,
                  ),
                ),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  AppBar(
                    backgroundColor: Colors
                        .transparent, // Fondo transparente para no sobreescribir el contenedor
                    elevation: 0,
                    title: Row(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Image.asset(
                              'assets/images/logo_marca.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        const Text(
                          'Vesulo',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(32, 53, 64, 1), // Texto blanco para contraste
                          ),
                        ),
                      ],
                    ),
                    actions: const [
                      Padding(
                        padding: EdgeInsets.only(right: 16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '¿Necesitas ayuda?',
                              style: TextStyle(
                                color: Color.fromRGBO(32, 53, 64, 1),
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'Llámanos al 967 043 424',
                              style: TextStyle(
                                color: Color.fromRGBO(32, 53, 64, 1),
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 16.0, right: 16.0, top: 0.0, bottom: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(0, 255, 255, 255), // Cambia este color según lo desees
                  borderRadius: BorderRadius.circular(
                      10), // Opcional, para redondear las esquinas
                ),
                child: Column(
                  children: [
                    // Indicador de pasos
                    SizedBox(
                      height: 100,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 2,
                            color: const Color.fromRGBO(32, 53, 64, 1),
                            width: double.infinity,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Primer CircleAvatar con borde
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: const Color.fromRGBO(32, 53, 64, 1), width: 3), // Color y grosor del borde
                                ),
                                child: const CircleAvatar(
                                  backgroundColor: Color.fromRGBO(193, 204, 207, 1),
                                  child: Text('1', style: TextStyle(color: Color.fromRGBO(32, 53, 64, 1))),
                                ),
                              ),
                              // Segundo CircleAvatar con borde
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: const Color.fromRGBO(32, 53, 64, 1), width: 3), // Color y grosor del borde
                                ),
                                child: const CircleAvatar(
                                  backgroundColor: Color(0xFF2E4854),
                                  child: Text('2', style: TextStyle(color: Colors.white)),
                                ),
                              ),
                              // Tercer CircleAvatar con borde
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(color: const Color.fromRGBO(32, 53, 64, 1), width: 3), // Color y grosor del borde
                                ),
                                child: const CircleAvatar(
                                  backgroundColor: Color.fromRGBO(193, 204, 207, 1),
                                  child: Text('3', style: TextStyle(color: Color.fromRGBO(32, 53, 64, 1))),
                                ),
                              ),
                            ],
                          )

                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Método de Pago',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF2E4854),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Image.asset(
                        'assets/images/logo_paypal.png',
                        height: 24,
                      ),
                      label: const Text('PayPal'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2E4854),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50),
                        textStyle: const TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // Cambia este valor según lo necesites
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: Colors.black54, // Color de la línea
                            thickness: 1, // Grosor de la línea
                            endIndent: 10, // Espacio al final antes del texto
                          ),
                        ),
                        Text(
                          'o pagar con tarjeta bancaria',
                          style: TextStyle(
                            color: Colors.black54,
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            color: Colors.black54, // Color de la línea
                            thickness: 1, // Grosor de la línea
                            indent: 10, // Espacio al inicio después del texto
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 16),
                    TextField(
                      controller: cardNumberController,
                      decoration: const InputDecoration(
                        labelText: 'Número de tarjeta',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: expiryDateController,
                            decoration: const InputDecoration(
                              labelText: 'MM / AA',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            controller: cvcController,
                            decoration: const InputDecoration(
                              labelText: 'CVC',
                              border: OutlineInputBorder(),
                            ),
                            keyboardType: TextInputType.number,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: cardHolderController,
                      decoration: const InputDecoration(
                        labelText: 'Nombre del titular',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: dniController,
                      decoration: const InputDecoration(
                        labelText: 'Número de DNI',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 8),
                    TextField(
                      controller: phoneController,
                      decoration: const InputDecoration(
                        labelText: 'Número de celular',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2E4854),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total:',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'S/. 676.20',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF2E4854),
                        foregroundColor: Colors.white,
                        minimumSize: const Size(double.infinity, 50),
                      ),
                      child: const Text('Pagar S/. 676.20'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
