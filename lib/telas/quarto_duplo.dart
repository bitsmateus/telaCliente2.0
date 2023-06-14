import 'package:flutter/material.dart';
import 'package:flutter_application_1/telas/dados_cliente.dart';

void main() {
  runApp(QuartoDuploApp());
}

class QuartoDuploApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quarto Duplo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: QuartoDuploScreen(),
    );
  }
}

class QuartoDuploScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quarto Duplo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/duplo.jpg', 
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Quarto Duplo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'O quarto duplo é perfeito para amigos ou casais que desejam compartilhar uma experiência de viagem agradável. Com duas camas confortáveis, este quarto espaçoso oferece todo o conforto necessário para uma estadia agradável. Além disso, o quarto possui um banheiro privativo, uma área de estar para relaxamento e um espaço de trabalho funcional. Comodidades como televisão, acesso à internet e produtos de higiene pessoal são fornecidos para garantir uma estadia agradável e conveniente.',
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
