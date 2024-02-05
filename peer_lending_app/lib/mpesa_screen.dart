import 'package:flutter/material.dart';

class MpesaScreen extends StatefulWidget {
  @override
  _MpesaScreenState createState() => _MpesaScreenState();
}

class _MpesaScreenState extends State<MpesaScreen> {
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset('assets/images/mpesa2.png', width: 80, height: 80),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/images/airtelmoney.jpg', width: 80, height: 80),
                  ),
                  Image.asset('assets/images/tkash.png', width: 80, height: 80),
                ],
              ),
              SizedBox(height: 16),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(
                  labelText: 'Phone number',
                  hintText: 'Enter mobile number',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.streetAddress,
              ),
              SizedBox(height: 16), // Fixed: Moved SizedBox inside the Column's children list
              Align(
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      // Implement verification logic
                    },
                    child: Text(
                      'Verify your number',
                      style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8.0), // Fixed: Moved SizedBox inside the Column's children list
              const Text(
                'Enter the OTP sent to your phone.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0), // Fixed: Moved SizedBox inside the Column's children list
              // OTP Input Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildOTPDigitField(),
                  buildOTPDigitField(),
                  buildOTPDigitField(),
                  buildOTPDigitField(),
                ],
              ),
              SizedBox(height: 16.0), // Fixed: Moved SizedBox inside the Column's children list
              // Additional Information
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Didn\'t receive OTP?',
                    style: TextStyle(fontSize: 12.0),
                  ),
                  TextButton(
                    onPressed: () {
                      // Implement resend OTP logic
                    },
                    child: Text(
                      'Resend OTP',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32), // Fixed: Moved SizedBox inside the Column's children list
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

  Widget buildOTPDigitField() {
    return Container(
      width: 50.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2.0),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: TextStyle(fontSize: 18.0),
        decoration: InputDecoration(
          counterText: '',
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
