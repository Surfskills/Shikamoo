import 'package:flutter/material.dart';

class PasswordSetupPage extends StatefulWidget {
  const PasswordSetupPage({Key? key}) : super(key: key);

  @override
  State<PasswordSetupPage> createState() => _PasswordSetupPageState();
}
class _PasswordSetupPageState extends State<PasswordSetupPage> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/app_logo.png', // Replace with your app's logo
            height: 30.0,
            width: 30.0,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: Text(
                  'Set Password',
                  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                ),
              ),          
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Create a strong and secure password.',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              // Password Input Fields Section
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(12.0),
                  ),
                ),
              ),
              // Password Conditions Section
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildConditionRow('At least 8 Characters', true),
                  buildConditionRow('Mix of Letters and Numbers', true),
                ],
              ),
              // Confirm Password Input Field
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(12.0),
                  ),
                ),
              ),
              // Matching Passwords Indicator
              Row(
                children: [
                  Icon(
                    Icons.check,
                    color: Colors.green,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'Passwords Match',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              ),
              // Continue Button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Handle Continue button press
                    Navigator.of(context).pushNamed('/business_dashboard_page');
                  },
                  child: Text('Complete registration'),
                ),
              ),
          
            ],
          ),
        ),
      ),
    );
  }

  Widget buildConditionRow(String condition, bool isMet) {
    return Row(
      children: [
        Icon(
          isMet ? Icons.check : Icons.close,
          color: isMet ? Colors.green : Colors.red,
        ),
        Text(
          condition,
          style: TextStyle(
            color: isMet ? Colors.grey : Colors.red,
          ),
        ),
      ],
    );
  }
}

