import 'package:flutter/material.dart';
import 'package:myapp/pages/pg_catalogo.dart';
import 'dart:ui';
import 'package:myapp/pages/pg_iniciosesion.dart';

class CrearCuenta extends StatelessWidget {
  const CrearCuenta({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Ajusta el diseño al aparecer el teclado
      body: Stack(
        children: [
          // Fondo con imagen
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/PAGINA_REGISTRO.png'), // Reemplazar con tu imagen
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Contenido principal con desplazamiento y centrado
          SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Formulario de Registro',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 255, 255, 255)
                                .withOpacity(0.2),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Nombre de Usuario',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: '',
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.5),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                'Correo Electrónico',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: '',
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.5),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                'Contraseña',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintText: '',
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.5),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 15),
                              const Text(
                                'Repetir contraseña',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 5),
                              const TextField(
                                style: TextStyle(color: Colors.white),
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: '',
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 1.5),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PaginaCatalogo()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromARGB(
                                      90, 255, 255, 255),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 95,
                                    vertical: 13,
                                  ),
                                ),
                                child: const Text(
                                  'Registrarse',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              Center(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const InicioSesion()),
                                        );
                                      },
                                      child: RichText(
                                        text: const TextSpan(
                                          style:
                                              TextStyle(color: Colors.white),
                                          children: [
                                            TextSpan(
                                              text: '¿Ya tiene cuenta? ',
                                            ),
                                            TextSpan(
                                              text: 'Iniciar Sesión',
                                              style: TextStyle(
                                                decoration:
                                                    TextDecoration.underline,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
