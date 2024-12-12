import 'package:flutter/material.dart';
import 'package:myapp/pages/pg_bienvenida.dart';
import 'package:myapp/pages/pg_crearcuenta.dart';
import 'package:myapp/pages/pg_iniciosesion.dart';
import 'package:myapp/pages/pg_metodopago.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Vesulo',
      debugShowCheckedModeBanner: false,
      // home: InicioSesion(),
      // home: CrearCuenta(),
      home: MetodoDePago(),
      // home: Bienvenida(),
    );
  }
}
