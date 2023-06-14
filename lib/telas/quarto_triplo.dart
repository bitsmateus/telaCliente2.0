import 'package:flutter/material.dart';
import 'package:flutter_application_1/telas/dados_cliente.dart';

void main() {
  runApp(QuartoTriplo());
}

class QuartoTriplo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quarto Triplo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: RoomSelectionScreen3(),
    );
  }
}

class RoomSelectionScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quarto Triplo'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/tripla.jpg', 
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Quarto Triplo',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Nosso quarto triplo é ideal para famílias ou grupos de amigos que procuram acomodações espaçosas e confortáveis. Com três camas individuais ou uma combinação de camas de solteiro e uma cama de casal, este quarto oferece amplo espaço para acomodar todos os hóspedes com conforto. Além disso, o quarto triplo possui um banheiro privativo, área de estar para relaxamento, mesa de trabalho e todas as comodidades necessárias, como televisão, acesso à internet e produtos de higiene pessoal. É o espaço perfeito para desfrutar de uma estadia agradável e memorável em grupo.',
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
