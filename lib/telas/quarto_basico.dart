import 'package:flutter/material.dart';
import 'package:flutter_application_1/telas/dados_cliente.dart';

void main() {
  runApp(BasicoQuarto());
}

class BasicoQuarto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quarto básico',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: RoomSelectionScreen(),
    );
  }
}

class RoomSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quarto básico'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/basico.jpg',
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Quarto Básico',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Nosso quarto básico oferece uma estadia confortável e conveniente para aqueles que buscam acomodações simples e funcionais. O quarto é equipado com uma cama confortável, um banheiro privativo e comodidades essenciais, como uma televisão, mesa de trabalho e acesso à internet. O espaço é ideal para viajantes individuais ou casais que valorizam o conforto e a simplicidade em sua estadia.',
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ClientDataScreen(),
                  ),
                );
              },
              child: Text('Selecionar'),
            ),
          ],
        ),
      ),
    );
  }
}
