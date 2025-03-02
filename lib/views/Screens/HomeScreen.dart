import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_fution_fork_mad/views/Screens/accountscreen.dart';
import 'package:the_fution_fork_mad/views/Screens/cartsscreen.dart';
import 'package:the_fution_fork_mad/views/Screens/menupage.dart';
import 'package:the_fution_fork_mad/theme_provider.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<homepage> {
  int _selectedIndex = 0;

  // Load the saved theme preference from SharedPreferences
  // @override
  // void initState() {
  //   super.initState();
  //   _loadTheme();
  // }

  // // Load the saved theme
  // void _loadTheme() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     _isDarkMode = prefs.getBool('darkMode') ??
  //         false; // Default to light mode if not set
  //   });
  // }

  // Save the theme to SharedPreferences
  // void _saveTheme(bool value) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   prefs.setBool('darkMode', value);
  // }

  // Toggle the theme
  // void _toggleTheme(bool value) {
  //   setState(() {
  //     _isDarkMode = value;
  //   });

  //   // Save the bool value to shared preferences
  //   _saveTheme(value); // Save the theme preference
  // }

  // Function to handle item tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Handle item tap actions here
    switch (index) {
      case 0:
        // Home tab selected - No need to navigate
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const MenuPage()), // Navigate to CartsScreen
        );
        break;
      case 2:
        // Carts tab selected
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const CartPage()), // Navigate to CartsScreen
        );
        break;
      case 3:
        // Account tab selected
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  const Accpage()), // Navigate to AccountScreen
        );
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
        darkTheme: ThemeData.dark(), // Dark Theme
        home: OrientationBuilder(builder: (context, orientation) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment:
                      CrossAxisAlignment.center, // Horizontally center the text
                  children: [
                    Text(
                      'Welcome to The Fusion Fork',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 20,
                          fontFamily:
                              'Roboto-Regular' // Replace with your font file path

                          ),
                    ),
                    SizedBox(height: 4), // Small space between the two texts
                    Text(
                      'Flavors Are Our Passion',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14, // Adjusted font size
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto-Italic',
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    themeProvider.themeMode == ThemeMode.dark
                        ? Icons.dark_mode
                        : Icons.light_mode,
                  ),
                  onPressed: () {
                    themeProvider.toggleTheme();
                  },
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  // Search Bar
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Search Food',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        'assets/images/poster.png', // Image path
                        height: 250,
                        width: 600,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Discover Our Food',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 20, // Space between cards horizontally
                    runSpacing: 20, // Space between rows vertically
                    children: [
                      orientation == Orientation.portrait
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // Centers the columns horizontally
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/burger.jpg',
                                          fit: BoxFit.cover),
                                      const Text("Dish Name"),
                                      const Text("\$10.99"),
                                      ElevatedButton(
                                        onPressed: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                  'Product Added To Cart!'),
                                            ),
                                          );
                                        },
                                        child: const Text("Add to Cart"),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 20),
                                SizedBox(
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/Shushi1.jpeg',
                                          fit: BoxFit.cover),
                                      const Text("Dish Name"),
                                      const Text("\$10.99"),
                                      ElevatedButton(
                                        onPressed: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                  'Product Added To Cart!'),
                                            ),
                                          );
                                        },
                                        child: const Text("Add to Cart"),
                                      ),
                                    ],
                                  ),
                                ),

                                // Second Row: 2 Cards
                                // SizedBox(
                                //   width: 150,
                                //   child: Column(
                                //     children: [
                                //       Image.asset('assets/images/Shushi1.jpeg',
                                //           fit: BoxFit.cover),
                                //       const Text("Dish Name"),
                                //       const Text("\$10.99"),
                                //       ElevatedButton(
                                //         onPressed: () {
                                //           // Add to cart functionality
                                //         },
                                //         child: const Text("Add to Cart"),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                                // SizedBox(
                                //   width: 150,
                                //   child: Column(
                                //     children: [
                                //       Image.asset('assets/images/Shushi1.jpeg',
                                //           fit: BoxFit.cover),
                                //       const Text("Dish Name"),
                                //       const Text("\$10.99"),
                                //       ElevatedButton(
                                //         onPressed: () {
                                //           // Add to cart functionality
                                //         },
                                //         child: const Text("Add to Cart"),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            )
                          : Row(
                              mainAxisAlignment: MainAxisAlignment
                                  .center, // Centers the columns horizontally
                              children: [
                                SizedBox(
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/burger.jpg',
                                          fit: BoxFit.cover),
                                      const Text("Dish Name"),
                                      const Text("\$10.99"),
                                      ElevatedButton(
                                        onPressed: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                  'Product Added To Cart!'),
                                            ),
                                          );
                                        },
                                        child: const Text("Add to Cart"),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 20),
                                SizedBox(
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/Shushi1.jpeg',
                                          fit: BoxFit.cover),
                                      const Text("Dish Name"),
                                      const Text("\$10.99"),
                                      ElevatedButton(
                                        onPressed: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                  'Product Added To Cart!'),
                                            ),
                                          );
                                        },
                                        child: const Text("Add to Cart"),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 20),
                                SizedBox(
                                  width:
                                      150, // Set a custom width for the column
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/sushi.jpg',
                                          fit: BoxFit.cover),
                                      const Text("Dish Name"),
                                      const Text("\$10.99"),
                                      ElevatedButton(
                                        onPressed: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                  'Product Added To Cart!'),
                                            ),
                                          );
                                        },
                                        child: const Text("Add to Cart"),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(width: 20),
                                SizedBox(
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Image.asset('assets/images/pizza.jpg',
                                          fit: BoxFit.cover),
                                      const Text("Dish Name"),
                                      const Text("\$10.99"),
                                      ElevatedButton(
                                        onPressed: () {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                              content: Text(
                                                  'Product Added To Cart!'),
                                            ),
                                          );
                                        },
                                        child: const Text("Add to Cart"),
                                      ),
                                    ],
                                  ),
                                ),

                                // Add gap between columns
                                const SizedBox(width: 20),
                              ],
                            ),
                    ],
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  Center(
                    child: SizedBox(
                      height: 100,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      AssetImage('assets/images/food.jpg'),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Delicious',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  child: Icon(Icons.fastfood),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Fresh',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  child: Icon(Icons.restaurant),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Taste',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  child: Icon(Icons.rice_bowl),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Healthy',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 8),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Center(
                    child: Text(
                      "Our Restaurant",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const Text(
                    'At The Fusion Fork, we serve delicious, freshly prepared dishes using the finest local ingredients. Come experience great food, exceptional service, and a cozy atmosphere perfect for any occasion.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                      fontFamily: 'Roboto-regular',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
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
          );
        }));
  }
}
