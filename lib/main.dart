import 'package:flutter/material.dart';
import 'package:flutter_application_1/telas/cliente_entrada.dart';
import 'package:flutter_application_1/telas/dados_cliente.dart';
import 'package:flutter_application_1/telas/pagamentos.dart';
import 'package:flutter_application_1/telas/tela_hoteis.dart';
import 'package:flutter_application_1/telas/tela_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/HotelApp",
      routes: {
        '/HotelApp': (context) => HotelApp(),
        '/HotelAppp': (context) => HotelApp(),
        '/Hoteis': (context) => Hoteis(),
       '/ClientDataScreen': (context) => ClientDataScreen(), 
       '/PaymentScreen': (context) => PaymentScreen(), 
       
      },
    );
  }
}