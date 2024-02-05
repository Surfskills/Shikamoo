import 'package:flutter/material.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}
class _OtpPageState extends State<OtpPage> {
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Verify Your Phone',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              'Enter the OTP sent to your phone.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
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

            SizedBox(height: 16.0),
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

              },
              child: Text(
                'Resend OTP',
                style: TextStyle(color: Colors.blue),
              ),
              )
              ],
            
            ),
            // Resend OTP Button

            SizedBox(height: 16.0),
            // Continue Button
            ElevatedButton(
              onPressed: () {
                // Handle Continue button press
                Navigator.of(context).pushNamed('/id_uploading_page');
              },
              child: Text('Continue'),
            ),
            SizedBox(height: 16.0),
            // Additional Information
          ],
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


