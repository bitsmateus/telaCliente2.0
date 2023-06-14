import 'package:flutter/material.dart';
import 'package:flutter_application_1/telas/realizado.dart';

void main() {
  runApp(PaymentScreen());
}

class PaymentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: PaymentForm(),
    );
  }
}

class PaymentForm extends StatelessWidget {
  TextEditingController amountController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController expirationDateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: amountController,
              decoration: InputDecoration(
                labelText: 'Valor',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: cardNumberController,
              decoration: InputDecoration(
                labelText: 'Número do Cartão',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: expirationDateController,
              decoration: InputDecoration(
                labelText: 'Data de Expiração',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: cvvController,
              decoration: InputDecoration(
                labelText: 'CVV',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PaymentSuccessScreen(),
                  ),
                );
              },
              child: Text('Realizar Pagamento'),
            ),
          ],
        ),
      ),
    );
  }
}
