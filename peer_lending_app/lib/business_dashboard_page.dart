// import 'package:flutter/material.dart';

// class BusinessDashboardPage extends StatefulWidget {
//   const BusinessDashboardPage({Key? key}) : super(key: key);

//   @override
//   State<BusinessDashboardPage> createState() => _BusinessDashboardPageState();
// }

// class _BusinessDashboardPageState extends State<BusinessDashboardPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // Logo: Positioned on the top-left corner
//         leading: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Image.asset(
//             'assets/app_logo.png', // Replace with your app's logo
//             height: 30.0,
//             width: 30.0,
//           ),
//         ),
//         // Dashboard Heading: A prominent heading
//         title: Text('Dashboard'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Logo and Header
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   'Welcome to Peer Lending Platform',
//                   style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   'Explore key services offered on the platform.',
//                   style: TextStyle(fontSize: 16.0),
//                 ),
//               ),
//               SizedBox(height: 16.0),
          
//               // First Row of Cards
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     buildServiceCard('Send', 'Pending Debts', Icons.send, () {
//                       // Handle Send button click
//                       // Navigate to pending debts screen
//                     }),
//                     buildServiceCard('Borrow', 'Find Lenders', Icons.people, () {
//                       // Handle Borrow button click
//                       // Navigate to find lenders screen
//                     }),
//                   ],
//                 ),
//               ),
          
//               SizedBox(height: 16.0),
          
//               // Second Row of Cards (Escrow and Bills)
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     buildServiceCard('Escrow', 'View Escrow Details', Icons.account_balance_wallet, () {
//                       // Handle Escrow button click
//                       // Navigate to escrow details screen
//                     }),
//                     buildServiceCard('Bills', 'Manage Bills', Icons.description, () {
//                       // Handle Bills button click
//                       // Navigate to manage bills screen
//                     }),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildServiceCard(
//     String title,
//     String description,
//     IconData icon,
//     VoidCallback onPressed,
//   ) {
//     return Container(
//       width: 120.0,
//       height: 160.0, // Fixed width for each card
//       child: Card(
//         elevation: 8.0,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(12.0),
//         ),
//         child: InkWell(
//           onTap: onPressed,
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(
//                   icon,
//                   size: 30.0,
//                   color: Colors.blue,
//                 ),
//                 Container(
//                   margin: const EdgeInsets.only(top: 8.0),
//                   child: Text(
//                     title,
//                     style: TextStyle(fontSize: 14.0),
//                   ),
//                 ),
//                 Container(
//                   margin: const EdgeInsets.only(top: 8.0),
//                   child: Text(
//                     description,
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 14.0, color: Colors.green), // Change color here
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class BusinessDashboardPage extends StatefulWidget {
  const BusinessDashboardPage({Key? key}) : super(key: key);

  @override
  State<BusinessDashboardPage> createState() => _BusinessDashboardPageState();
}

class _BusinessDashboardPageState extends State<BusinessDashboardPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
      ),
        drawer: Drawer(
          width: 230,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Header Section
            Container(
              child: UserAccountsDrawerHeader(
                accountName: Text("Fred Osege"), // Replace with user's full name
                accountEmail: Text("ojjfred@gmail.com"), // Replace with user's email
                currentAccountPicture: CircleAvatar(
                  // Replace with user's profile picture or icon
                  backgroundImage: AssetImage('assets/images/fred_Pass.jpg',),
                ),
              ),
            ),
            // Drawer Links
            ListTile(
              title: Text('Verify your Account'),
              onTap: () {
                // Navigate to the screen for verifying the account
                Navigator.pop(context); // Close the Drawer
                // TODO: Implement navigation logic
              },
            ),
            ListTile(
              title: Text('Setup your Wallet'),
              onTap: () {
                // Navigate to the screen for setting up the wallet
                Navigator.of(context).pushNamed('/payment_gateway_page'); // Close the Drawer
                // TODO: Implement navigation logic
              },
            ),
            ListTile(
              title: Text('Write your Contract'),
              onTap: () {
                // Navigate to the screen for writing the contract
                Navigator.pop(context); // Close the Drawer
                // TODO: Implement navigation logic
              },
            ),
            ListTile(
              title: Text('Create your Circle'),
              onTap: () {
                // Navigate to the screen for creating the circle
                Navigator.pop(context); // Close the Drawer
                // TODO: Implement navigation logic
              },
            ),
                        ListTile(
              title: Text('Customer Support'),
              onTap: () {
                // Navigate to the screen for managing support requests
                Navigator.pop(context); // Close the Drawer
                // TODO: Implement navigation logic
              },
            ),
            ListTile(
              title: Text('Security Settings'),
              onTap: () {
                // Navigate to the screen for managing security settings
                Navigator.pop(context); // Close the Drawer
                // TODO: Implement navigation logic
              },
            ),
                      Container(
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Recommend Eazzy Banking by sharing your invite code',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 8.0),
                SelectableText(
                  'W7PNgFXb6kb',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Good evening, FRED.',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('LOGIN'),
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                QuickActionButton(
                  title: 'Clear Loan',
                  icon: Icons.receipt,
                  onTap: () {},
                ),
                QuickActionButton(
                  title: 'Borrow Money',
                  icon: Icons.account_balance,
                  onTap: () {},
                ),
                QuickActionButton(
                  title: 'Manage escrow',
                  icon: Icons.mobile_screen_share,
                  onTap: () {},
                ),
                QuickActionButton(
                  title: 'Manage Bills',
                  icon: Icons.shopping_cart,
                  onTap: () {},
                ),
              ],
            ),
          ),
          Container(
            color: Theme.of(context).primaryColor,
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Recommend Eazzy Banking by sharing your invite code',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 8.0),
                SelectableText(
                  'W7PNgFXb6kb',
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class QuickActionButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const QuickActionButton({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 40.0),
            Text(title),
          ],
        ),
      ),
    );
  }
}