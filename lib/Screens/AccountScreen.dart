import 'package:flutter/material.dart';
import 'package:the_fution_fork_mad/Screens/CartsScreen.dart';
import 'package:the_fution_fork_mad/screens/HomeScreen.dart';
import 'Menupage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Accpage extends StatefulWidget {
  const Accpage({super.key});

  @override
  _AccpageState createState() => _AccpageState();
}

class _AccpageState extends State<Accpage> {
  int _selectedIndex = 3;
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    _loadTheme(); // Load theme preference on init
  }

  // Load the saved theme from SharedPreferences
  void _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isDarkMode = prefs.getBool('darkMode') ?? false; // Default to light mode
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const homepage()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MenuPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CartPage()),
        );
        break;
      case 3:
        // Do nothing since we're already on the Account page.
        break;
      default:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: _isDarkMode ? ThemeData.dark() : ThemeData.light(),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: const Text(
              'Account Settings',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            centerTitle: true,
            iconTheme: const IconThemeData(color: Colors.black),
          ),
          body: ListView(
            padding: const EdgeInsets.all(16),
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Change Username'),
                onTap: () {
                  // Add functionality for changing the username
                },
              ),
              ListTile(
                leading: const Icon(Icons.email),
                title: const Text('Change Email'),
                onTap: () {
                  // Add functionality for changing the email
                },
              ),
              ListTile(
                leading: const Icon(Icons.lock),
                title: const Text('Change Password'),
                onTap: () {
                  // Add functionality for changing the password
                },
              ),
              const Divider(),
              const Text(
                'Notification Settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text('Enable Notifications'),
                onTap: () {
                  // Add functionality to enable or disable notifications
                },
              ),
              const Divider(),
              const Text(
                'Privacy Settings',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              ListTile(
                leading: const Icon(Icons.privacy_tip),
                title: const Text('Change Privacy Settings'),
                onTap: () {
                  // Add functionality for privacy settings
                },
              ),
            ],
          ),
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
        ));
  }
}
