import 'package:flutter/material.dart';
import 'package:peer_lending_app/address_validation_page.dart';
import 'package:peer_lending_app/business_dashboard_page.dart';
import 'package:peer_lending_app/credit_add_page.dart';
import 'package:peer_lending_app/id_uploading_page.dart';
import 'package:peer_lending_app/landing_page.dart';
import 'package:peer_lending_app/mpesa_screen.dart';
import 'package:peer_lending_app/otp_page.dart';
import 'package:peer_lending_app/password_setup_page.dart';
import 'package:peer_lending_app/payment_gateway_page.dart';
import 'package:peer_lending_app/selfie_page.dart';
import 'package:peer_lending_app/sign_in_page.dart';
import 'package:peer_lending_app/sign_up_page.dart';


class PeerLendingApp extends StatelessWidget {
  const PeerLendingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    // Routes
    initialRoute: '/',
      routes: <String, WidgetBuilder> {
        "/": (context)=> const LandingPage(),
        "/sign_up": (context)=> const SignUpPage(),
        "/password_setup_page": (context)=> const PasswordSetupPage(),
        "/otp_page": (context)=> const OtpPage(),
        "/selfie_page": (context)=> const SelfiePage(),
        "/sign_up_page": (context)=> const SignUpPage(),
        "/sign_in": (context)=> const SignInPage(),
        "/id_uploading_page": (context)=> const IdUploadingPage(),
        "/business_dashboard_page": (context)=> const BusinessDashboardPage(),
        "/address_validation_page": (context)=> const AddressValidationPage(),
        "/payment_gateway_page":(context) => PaymentGatewayPage(),
        '/credit_add_page': (context) => CreditCardAddPage(),
        "/mpesa_screen": (context) => MpesaScreen()
      }
    );
  }
}
