import 'package:flutter/material.dart';

class CreditCardAddPage extends StatefulWidget {
  @override
  _CreditCardAddPageState createState() => _CreditCardAddPageState();
}

class _CreditCardAddPageState extends State<CreditCardAddPage> {
  String? cardType;
  final List<String> cardTypes = ['Visa', 'MasterCard', 'American Express'];
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _expiryDateController = TextEditingController();
  final TextEditingController _securityCodeController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Link a Card'),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              // Handle close action
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribute the images evenly across the row
                children: [
                  Image.asset('assets/images/matercard.jpg', width: 80, height: 80), // Adjust the size as needed
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/america-express.jpg', width: 80, height: 80),
                  ),
                  Image.asset('assets/images/visa.jpg', width: 80, height: 80),
                ],
              ),
              SizedBox(height: 32),
              Text(
                'Link a card',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
              ),
              SizedBox(height: 32),
              TextField(
                controller: _cardNumberController,
                decoration: InputDecoration(
                  labelText: 'Debit or credit card number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: cardType,
                hint: Text('Select your card type'),
                onChanged: (String? newValue) {
                  setState(() {
                    cardType = newValue;
                  });
                },
                items: cardTypes.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _expiryDateController,
                decoration: InputDecoration(
                  labelText: 'Expiration date',
                  hintText: 'mm/yy',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.datetime,
              ),
              SizedBox(height: 16),
              TextField(
                controller: _securityCodeController,
                decoration: InputDecoration(
                  labelText: 'Security code',
                  hintText: 'Enter CVC',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: 'Billing address',
                  hintText: 'Enter your address',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.streetAddress,
              ),
              SizedBox(height: 32),
              ElevatedButton(
                onPressed: () {
                  // TODO: Implement card link logic
                },
                child: Text('Link Card'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
