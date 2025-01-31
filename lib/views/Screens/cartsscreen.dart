import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_fution_fork_mad/views/Screens/accountscreen.dart';
import 'package:the_fution_fork_mad/views/screens/homescreen.dart';
import 'package:the_fution_fork_mad/theme_provider.dart';
import 'Menupage.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  _CartscreenState createState() => _CartscreenState();
}

class _CartscreenState extends State<CartPage> {
  int _selectedIndex = 1;
  String? selectedPayment;

  // Function to handle item tap for BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const homepage()));
        break;
      case 1:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const MenuPage()));
        break;
      case 3:
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Accpage()));
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      themeMode: themeProvider.themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Checkout',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Listing Section
                  const Text(
                    'Your Items',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/sushi.jpg',
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                          const SizedBox(width: 16),
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Sushi',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Qty: 2',
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.grey),
                                ),
                                Text(
                                  '\$15.99',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          const Text(
                            '\$31.98', // Total price for the item
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 5, 79, 9)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Full Name
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                        child: Text(
                          'Full Name:',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Enter your Full Name',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Email Address
                  Row(
                    children: [
                      const SizedBox(
                        width: 100, 
                        child: Text(
                          'Email:',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Enter your Email',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Contact Number
                  Row(
                    children: [
                      const SizedBox(
                        width: 100, 
                        child: Text(
                          'Contact No:',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Enter your Contact No',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Shipping Address
                  Row(
                    children: [
                      const SizedBox(
                        width: 100, 
                        child: Text(
                          'Address:',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Enter your Shipping Address',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  // Payment Methods Section
                  const Text(
                    'Payment Method:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  ListTile(
                    leading: const Icon(Icons.credit_card),
                    title: const Text('Credit/Debit Card'),
                    trailing: Radio<String>(
                      value: 'card',
                      groupValue: selectedPayment,
                      onChanged: (value) {
                        setState(() {
                          selectedPayment = value!;
                        });
                      },
                    ),
                  ),
                  const Divider(),

                  ListTile(
                    leading: const Icon(Icons.account_balance_wallet),
                    title: const Text('Wallet'),
                    trailing: Radio<String>(
                      value: 'wallet',
                      groupValue: selectedPayment,
                      onChanged: (value) {
                        setState(() {
                          selectedPayment = value!;
                        });
                      },
                    ),
                  ),
                  const Divider(),

                  ListTile(
                    leading: const Icon(Icons.money),
                    title: const Text('Cash on Delivery'),
                    trailing: Radio<String>(
                      value: 'cod',
                      groupValue: selectedPayment,
                      onChanged: (value) {
                        setState(() {
                          selectedPayment = value!;
                        });
                      },
                    ),
                  ),
                  const Divider(),

                  ListTile(
                    leading: const Icon(Icons.watch_later),
                    title: const Text('KOKO: Buy Now Pay Later'),
                    trailing: Radio<String>(
                      value: 'koko',
                      groupValue: selectedPayment,
                      onChanged: (value) {
                        setState(() {
                          selectedPayment = value!;
                        });
                      },
                    ),
                  ),
                  const Divider(),

                  ListTile(
                    leading: const Icon(Icons.splitscreen),
                    title: const Text('Split Payment Or Group Payments'),
                    trailing: Radio<String>(
                      value: 'spg',
                      groupValue: selectedPayment,
                      onChanged: (value) {
                        setState(() {
                          selectedPayment = value!;
                        });
                      },
                    ),
                  ),
                  const Divider(),

                  ListTile(
                    leading: const Icon(Icons.energy_savings_leaf),
                    title: const Text('Mintpay'),
                    trailing: Radio<String>(
                      value: 'mint',
                      groupValue: selectedPayment,
                      onChanged: (value) {
                        setState(() {
                          selectedPayment = value!;
                        });
                      },
                    ),
                  ),
                  const Divider(),

                  const SizedBox(height: 20),

                  // Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Order placed successfully!'),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.all(16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.green,
                      ),
                      child: const Text(
                        'Place Order',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        // Bottom Navigation Bar
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Browse',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Carts',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
