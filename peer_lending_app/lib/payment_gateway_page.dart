import 'package:flutter/material.dart';

// Define the routes for the different payment method screens
const String paypalRoute = '/paypalScreen';
const String mpesaRoute = '/mpesa_screen';
const String creditCardRoute = '/credit_add_page';

// Define the PaymentGatewayPage widget
class PaymentGatewayPage extends StatefulWidget {
  @override
  _PaymentGatewayPageState createState() => _PaymentGatewayPageState();
}

// Define the _PaymentGatewayPageState class that contains the methods for navigation
class _PaymentGatewayPageState extends State<PaymentGatewayPage> {
  String? selectedPaymentMethod;
  String? selectedLoanPackage;
  double interestRate = 0.0;

  final List<String> paymentMethods = ['PayPal', 'M-Pesa', 'Credit Card'];
  final List<String> loanPackages = ['1000 - 3000', '3000 - 6000', '6000 - 9000', '9000 - 11000'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Gateway Setup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row of three images
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset('assets/images/mpesa1.jpg', width: 80, height: 80),
                    Image.asset('assets/images/paypal.png', width: 80, height: 80),
                    Image.asset('assets/images/visa.jpg', width: 80, height: 80),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Select Payment Method',
                style: Theme.of(context).textTheme.headline6,
              ),
              DropdownButtonFormField<String>(
                value: selectedPaymentMethod,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  border: OutlineInputBorder(),
                ),
                items: paymentMethods.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedPaymentMethod = newValue;
                  });
                },
              ),
              SizedBox(height: 20),
              Text(
                'Select Loan Package',
                style: Theme.of(context).textTheme.headline6,
              ),
              DropdownButtonFormField<String>(
                value: selectedLoanPackage,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  border: OutlineInputBorder(),
                ),
                items: loanPackages.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    selectedLoanPackage = newValue;
                  });
                },
              ),
              SizedBox(height: 20),
              Text(
                'Set Interest Rate (%)',
                style: Theme.of(context).textTheme.headline6,
              ),
              Slider(
                min: 0.0,
                max: 20.0,
                divisions: 20,
                label: "${interestRate.round()}%",
                value: interestRate,
                onChanged: (double value) {
                  setState(() {
                    interestRate = value;
                  });
                },
              ),


              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: navigateToSelectedPaymentScreen,
                  child: Text('Continue', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Method to navigate to the selected payment method screen
  void navigateToSelectedPaymentScreen() {
    if (selectedPaymentMethod == null) {
      _showErrorDialog();
      return;
    }

    String route;
    switch (selectedPaymentMethod) {
      case 'PayPal':
        route = paypalRoute;
        break;
      case 'M-Pesa':
        route = mpesaRoute;
        break;
      case 'Credit Card':
        route = creditCardRoute;
        break;
      default:
        route = '';
    }

    if (route.isNotEmpty) {
      Navigator.of(context).pushNamed(route);
    }
  }

  // Helper method to show an error dialog if no payment method is selected
  void _showErrorDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Sorry!'),
          content: Text('Please select a payment method.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(); // Dismiss the dialog
              },
            ),
          ],
        );
      },
    );
  }
}

// Dummy screen widgets for each payment method
class PayPalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('PayPal')), body: Center(child: Text('PayPal Screen')));
  }
}

class MPesaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('M-Pesa')), body: Center(child: Text('M-Pesa Screen')));
  }
}

// class CreditCardScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(appBar: AppBar(title: Text('Credit Card')), body: Center(child: Text('Credit Card Screen')));
//   }
// }
