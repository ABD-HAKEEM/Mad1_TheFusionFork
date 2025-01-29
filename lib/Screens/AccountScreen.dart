import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_fution_fork_mad/Screens/CartsScreen.dart';
import 'package:the_fution_fork_mad/screens/homescreen.dart';
import 'package:the_fution_fork_mad/theme_provider.dart';
import 'Menupage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Accpage(),
    );
  }
}

class Accpage extends StatefulWidget {
  const Accpage({super.key});

  @override
  _AccpageState createState() => _AccpageState();
}

class _AccpageState extends State<Accpage> {
  int _selectedIndex = 3;
  String _username = '';
  String _email = '';
  String _password = '';
  String _oldemail = '';

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const homepage()),
        );
        break;
      case 1:
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const MenuPage()),
        );
        break;
      case 2:
        Navigator.pushReplacement(
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
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      themeMode: themeProvider.themeMode,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Account Settings',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            // Create Username ListTile
            ListTile(
              leading: const Icon(Icons.account_circle),
              title: const Text('Create Username'),
              onTap: () {
                // Directly show the registration dialog
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Register Account'),
                      content: SingleChildScrollView(
                        child: Column(
                          children: [
                            // Username Field
                            TextField(
                              decoration: const InputDecoration(
                                labelText: 'Username',
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _username = value;
                                });
                              },
                            ),
                            const SizedBox(height: 10),
                            // Email Field
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _email = value;
                                });
                              },
                            ),
                            const SizedBox(height: 10),
                            // Password Field
                            TextField(
                              obscureText: true,
                              decoration: const InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _password = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        // Cancel button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                        ),
                        // Register button
                        TextButton(
                          onPressed: () {
                            // Handle registration logic with _username, _email, and _password
                            print(
                                'Username: $_username, Email: $_email, Email: $_password');
                            Navigator.pop(context);
                          },
                          child: const Text('Register'),
                        ),
                      ],
                    );
                  },
                );
              }, // Show registration form directly here
            ),
            // Change Email ListTile
            ListTile(
              leading: const Icon(Icons.email),
              title: const Text('Change Email'),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Change Email'),
                      content: SingleChildScrollView(
                        child: Column(
                          children: [
                            // Old Email Field
                            TextField(
                              decoration: const InputDecoration(
                                labelText: 'Old Email',
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _oldemail = value;
                                });
                              },
                            ),
                            const SizedBox(height: 10),
                            // New Email Field
                            TextField(
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                labelText: 'New Email',
                                border: OutlineInputBorder(),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  _email = value;
                                });
                              },
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                      actions: [
                        // Cancel button
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancel'),
                        ),
                        // Register button
                        TextButton(
                          onPressed: () {
                            // Handle registration logic with _username, _email, and _password
                            print('Old Email: $_oldemail, Email: $_email');
                            Navigator.pop(context);
                          },
                          child: const Text('Update Email Address'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            // Change Password ListTile
            ListTile(
                leading: const Icon(Icons.lock),
                title: const Text('Change Password'),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Change Password'),
                          content: SingleChildScrollView(
                            child: Column(children: [
                              // Old Password Field
                              TextField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: 'Old Password',
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (value) {},
                              ),
                              const SizedBox(height: 10),
                              // Password Field
                              TextField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: 'New Password',
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    _password = value;
                                  });
                                },
                              ),
                              TextField(
                                obscureText: true,
                                decoration: const InputDecoration(
                                  labelText: 'Confirm Password',
                                  border: OutlineInputBorder(),
                                ),
                                onChanged: (value) {
                                  setState(() {
                                    _password = value;
                                  });
                                },
                              ),
                            ]),
                          ),
                          actions: [
                            // Cancel button
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Cancel'),
                            ),
                            // Register button
                            TextButton(
                              onPressed: () {
                                // Handle registration logic with _username, _email, and _password
                                print('Password: $_password');
                                Navigator.pop(context);
                              },
                              child: const Text('Change Password'),
                            ),
                          ],
                        );
                      });
                }),
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
        bottomSheet: Container(
          height: 50,
          padding: const EdgeInsets.all(10),
          child: const Center(
            child: Text(
              '© 2025 Abdul Hakeem. All rights reserved.',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
