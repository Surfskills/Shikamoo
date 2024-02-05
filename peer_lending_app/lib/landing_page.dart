import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Image.asset(
            //   "assets/images/undraw_Completed_m9ci.png",
            //   fit: BoxFit.contain,
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                'Welcome to the P2P Lending App!',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/sign_up');
                  },
                  icon: const Icon(Icons.arrow_forward),
                  label: const Text('Get Started'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Discover the power of peer-to-peer lending.',
                textAlign: TextAlign.center,
              ),
            ),
            CardWithButton(
              icon: Icons.money_off,
              title: 'Borrow',
              subtitle: 'Carry out secure and successful transactions on escrow.',
              onTap: () {
                // Handle Borrow card button press
              },
            ),
            CardWithButton(
              icon: Icons.account_balance,
              title: 'Lend',
              subtitle: 'Carry out secure and successful transactions on escrow.',
              onTap: () {
                // Handle Lend card button press
              },
            ),
            CardWithButton(
              icon: Icons.lock,
              title: 'Escrow',
              subtitle: 'Carry out secure and successful transactions on escrow.',
              onTap: () {
                // Handle Escrow card button press
              },
            ),
                        CardWithButton(
              icon: Icons.lock,
              title: 'Bills',
              subtitle: 'Automate your recurring bills using our platform.',
              onTap: () {
                // Handle Escrow card button press
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CardWithButton extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  const CardWithButton({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(icon, size: 40.0),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                  Text(subtitle),
                 Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/sign_up');
                  },
                  label: const Text('Discover More'),
                  icon: const Icon(Icons.arrow_forward),
                ),
              )
              ) 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
