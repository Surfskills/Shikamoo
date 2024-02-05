import 'package:flutter/material.dart';

class AddressValidationPage extends StatefulWidget {
  const AddressValidationPage({Key? key}) : super(key: key);

  @override
  State<AddressValidationPage> createState() =>
      _AddressValidationPageState();
}

class _AddressValidationPageState extends State<AddressValidationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Logo: Positioned at the top-left corner
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/app_logo.png', // Replace with your app's logo
            height: 30.0,
            width: 30.0,
          ),
        ),
        // Replace with your app's title
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Header Text
            Text(
              'Physical Address Details',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            // Input Fields Section
            buildTextField('Home Residence'),
            buildTextField('Current Address'),
            buildTextField('Profession'),
            buildTextField('Next of Kin'),
            SizedBox(height: 16.0),
            // Continue Button
            ElevatedButton(
              onPressed: () {
                // Handle Continue button press
                // Add navigation or validation logic here
                Navigator.of(context).pushNamed('/id_uploading_page');
              },
              child: Text('Continue'),
            ),
            SizedBox(height: 16.0),
            // Back icon aligned at the bottom-left corner
            Align(
              alignment: Alignment.bottomLeft,
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  // Handle back button press
                  // Navigator.pop(context); // You may want to navigate back
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String labelText) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          border: OutlineInputBorder(),
          contentPadding: EdgeInsets.all(12.0),
        ),
      ),
    );
  }
}
