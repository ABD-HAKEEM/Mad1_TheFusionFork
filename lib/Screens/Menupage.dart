import 'package:flutter/material.dart';
import 'package:the_fution_fork_mad/Screens/AccountScreen.dart';
import 'package:the_fution_fork_mad/Screens/CartsScreen.dart';
import 'package:the_fution_fork_mad/Screens/productpage2.dart';
import 'package:the_fution_fork_mad/screens/HomeScreen.dart';
import 'package:the_fution_fork_mad/screens/productpage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 1;
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

  // Function to handle item tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        // Home tab selected
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const homepage()), // Navigate to HomeScreen
        );
        break;
      case 1:
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const CartPage()), // Navigate to Cartpage
        );

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
    return MaterialApp(
        themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,
        theme: ThemeData.light(), // Light Theme
        darkTheme: ThemeData.dark(), // Dark Theme
        home: OrientationBuilder(builder: (context, orientation) {
          return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                title: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Deliver',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                    Text(
                      'Main street Colombo 3',
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                ),
              ),
              body: SingleChildScrollView(
                child: orientation == Orientation.portrait
                    ? Column(
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

                          // Horizontal List of Items
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal:
                                    24), // Equivalent to px-6 in Tailwind CSS
                            child: SizedBox(
                              height: 100,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: const [
                                  // First Item - Pizza
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                            'assets/images/pizza.jpg'),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Pizza',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 16),

                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                            'assets/images/burger.jpg'),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Burger',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 16), // Space between images

                                  // Third Item - Lasagna
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                            'assets/images/lasagna.jpg'),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Lasagna',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 16), // Space between images

                                  // Fourth Item - Risotto
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                            'assets/images/risotto.jpg'),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Risotto',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 16), // Space between images

                                  // Fifth Item - Sushi
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                            'assets/images/sushi.jpg'),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Sushi',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 16), // Space between images

                                  // Sixth Item - Sashimi
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage(
                                            'assets/images/sashimi.jpg'),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'Sashimi',
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          //image card 1
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // Wrap the widgets in a Column
                              children: [
                                const SizedBox(
                                    height:
                                        16), // Correct placement for SizedBox (within the Column)
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const Productpage2(),
                                      ),
                                    );
                                  },
                                  child: Card(
                                    elevation: 5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                            'assets/images/sushi.jpg',
                                            width: 180,
                                            height: 180,
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(
                                              width:
                                                  16), // Space between image and text
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Text(
                                                  'Sushi',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Text(
                                                  'Sushi – Delicately prepared rolls of vinegared rice, fresh fish, and a variety of toppings like vegetables, seaweed, and sometimes eggs, offering a perfect balance of flavors and textures.',
                                                  style: TextStyle(
                                                      color: Colors.grey[600]),
                                                ),
                                                const SizedBox(height: 8),
                                                const Text(
                                                  '\$15.99',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.green),
                                                ),
                                                const SizedBox(height: 4),
                                                Wrap(
                                                  children: [
                                                    TextButton.icon(
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  const CartPage()),
                                                        );
                                                      },
                                                      icon: const Icon(
                                                          Icons.shopping_bag,
                                                          color: Color.fromARGB(
                                                              255,
                                                              175,
                                                              76,
                                                              111)),
                                                      label: const Text(
                                                          'Buy Now!',
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      0,
                                                                      0,
                                                                      0))),
                                                    ),
                                                    TextButton.icon(
                                                      onPressed: () {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          const SnackBar(
                                                            content: Text(
                                                                'Product Added To Cart!'),
                                                          ),
                                                        );
                                                      },
                                                      icon: const Icon(
                                                          Icons.shopping_cart,
                                                          color: Color.fromARGB(
                                                              255,
                                                              175,
                                                              76,
                                                              111)),
                                                      label: const Text(
                                                          'Add to Cart',
                                                          style: TextStyle(
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      0,
                                                                      0,
                                                                      0))),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),

                          //image card 2
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // Wrap the widgets in a Column
                              children: [
                                const SizedBox(height: 16),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const Productpage(),
                                        ),
                                      );
                                    },
                                    // Correct placement for SizedBox (within the Column)
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/burger.jpg',
                                              width: 180,
                                              height: 180,
                                              fit: BoxFit.cover,
                                            ),
                                            const SizedBox(
                                                width:
                                                    16), // Space between image and text
                                            // Column for text information
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'Burger',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 4),
                                                  Text(
                                                    'Burger – A delicious sandwich consisting of a juicy beef patty (or other meats) nestled between a soft bun, often topped with melted cheese, crispy lettuce, tomatoes, pickles, and condiments. ',
                                                    style: TextStyle(
                                                        color:
                                                            Colors.grey[600]),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  const Text(
                                                    '\$20.99',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.green),
                                                  ),
                                                  const SizedBox(height: 4),
                                                  // Add to Cart Button

                                                  Wrap(
                                                    children: [
                                                      TextButton.icon(
                                                        onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const CartPage()),
                                                          );
                                                        },
                                                        icon: const Icon(
                                                            Icons.shopping_bag,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    175,
                                                                    76,
                                                                    111)),
                                                        label: const Text(
                                                            'Buy Now!',
                                                            style: TextStyle(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0))),
                                                      ),
                                                      TextButton.icon(
                                                        onPressed: () {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            const SnackBar(
                                                              content: Text(
                                                                  'Product Added To Cart!'),
                                                            ),
                                                          );
                                                        },
                                                        icon: const Icon(
                                                            Icons.shopping_cart,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    175,
                                                                    76,
                                                                    111)),
                                                        label: const Text(
                                                            'Add to Cart',
                                                            style: TextStyle(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0))),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),

                          //image card 3
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              // Wrap the widgets in a Column
                              children: [
                                const SizedBox(height: 16),
                                GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const CartPage(),
                                        ),
                                      );
                                    },
                                    child: Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: [
                                            Image.asset(
                                              'assets/images/pizza.jpg',
                                              width: 180,
                                              height: 180,
                                              fit: BoxFit.cover,
                                            ),
                                            const SizedBox(
                                                width:
                                                    16), // Space between image and text
                                            // Column for text information
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'Pizza',
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  const SizedBox(height: 4),
                                                  Text(
                                                    'Pizza – A delicious dish made with a thin or thick crust, topped with tomato sauce, melted cheese, and a variety of toppings like meats, vegetables, and herbs, baked to perfection.',
                                                    style: TextStyle(
                                                        color:
                                                            Colors.grey[600]),
                                                  ),
                                                  const SizedBox(height: 8),
                                                  const Text(
                                                    '\$18.99',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.green),
                                                  ),
                                                  const SizedBox(height: 4),
                                                  // Add to Cart Button
                                                  Wrap(
                                                    children: [
                                                      TextButton.icon(
                                                        onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        const CartPage()),
                                                          );
                                                        },
                                                        icon: const Icon(
                                                            Icons.shopping_bag,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    175,
                                                                    76,
                                                                    111)),
                                                        label: const Text(
                                                            'Buy Now!',
                                                            style: TextStyle(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0))),
                                                      ),
                                                      TextButton.icon(
                                                        onPressed: () {
                                                          ScaffoldMessenger.of(
                                                                  context)
                                                              .showSnackBar(
                                                            const SnackBar(
                                                              content: Text(
                                                                  'Product Added To Cart!'),
                                                            ),
                                                          );
                                                        },
                                                        icon: const Icon(
                                                            Icons.shopping_cart,
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    175,
                                                                    76,
                                                                    111)),
                                                        label: const Text(
                                                            'Add to Cart',
                                                            style: TextStyle(
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        0,
                                                                        0,
                                                                        0))),
                                                      )
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      )
                    : Wrap(children: [
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center, // Centers vertically
                          crossAxisAlignment:
                              CrossAxisAlignment.center, // Centers horizontally

                          children: [
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                width: 150,
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/burger.jpg', // Replace with your image URL

                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Burger',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      '\$20.00',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 8),
                                    TextButton.icon(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Productpage()),
                                        );
                                      },
                                      icon: const Icon(Icons.shopping_cart,
                                          color: Color.fromARGB(
                                              255, 175, 76, 111)),
                                      label: const Text('Add to Cart',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 0, 0))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                width: 150,
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/burger.jpg', // Replace with your image URL

                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Burger',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      '\$20.00',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 8),
                                    TextButton.icon(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Productpage()),
                                        );
                                      },
                                      icon: const Icon(Icons.shopping_cart,
                                          color: Color.fromARGB(
                                              255, 175, 76, 111)),
                                      label: const Text('Add to Cart',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 0, 0))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                width: 150,
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/burger.jpg', // Replace with your image URL

                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Burger',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      '\$20.00',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 8),
                                    TextButton.icon(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Productpage()),
                                        );
                                      },
                                      icon: const Icon(Icons.shopping_cart,
                                          color: Color.fromARGB(
                                              255, 175, 76, 111)),
                                      label: const Text('Add to Cart',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 0, 0))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                width: 150,
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/burger.jpg', // Replace with your image URL

                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Burger',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      '\$20.00',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 8),
                                    TextButton.icon(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Productpage()),
                                        );
                                      },
                                      icon: const Icon(Icons.shopping_cart,
                                          color: Color.fromARGB(
                                              255, 175, 76, 111)),
                                      label: const Text('Add to Cart',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 0, 0))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Container(
                                width: 150,
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      'assets/images/burger.jpg', // Replace with your image URL

                                      fit: BoxFit.cover,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      'Burger',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 8),
                                    const Text(
                                      '\$20.00',
                                      style: TextStyle(
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(height: 8),
                                    TextButton.icon(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Productpage()),
                                        );
                                      },
                                      icon: const Icon(Icons.shopping_cart,
                                          color: Color.fromARGB(
                                              255, 175, 76, 111)),
                                      label: const Text('Add to Cart',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 0, 0, 0))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center, // Centers vertically
                            crossAxisAlignment: CrossAxisAlignment
                                .center, // Centers horizontally

                            children: [
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 150,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/burger.jpg', // Replace with your image URL

                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Burger',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        '\$20.00',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 8),
                                      TextButton.icon(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Productpage()),
                                          );
                                        },
                                        icon: const Icon(Icons.shopping_cart,
                                            color: Color.fromARGB(
                                                255, 175, 76, 111)),
                                        label: const Text('Add to Cart',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 150,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/burger.jpg', // Replace with your image URL

                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Burger',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        '\$20.00',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 8),
                                      TextButton.icon(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Productpage()),
                                          );
                                        },
                                        icon: const Icon(Icons.shopping_cart,
                                            color: Color.fromARGB(
                                                255, 175, 76, 111)),
                                        label: const Text('Add to Cart',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 150,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/burger.jpg', // Replace with your image URL

                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Burger',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        '\$20.00',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 8),
                                      TextButton.icon(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Productpage()),
                                          );
                                        },
                                        icon: const Icon(Icons.shopping_cart,
                                            color: Color.fromARGB(
                                                255, 175, 76, 111)),
                                        label: const Text('Add to Cart',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 150,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/burger.jpg', // Replace with your image URL

                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Burger',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        '\$20.00',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 8),
                                      TextButton.icon(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Productpage()),
                                          );
                                        },
                                        icon: const Icon(Icons.shopping_cart,
                                            color: Color.fromARGB(
                                                255, 175, 76, 111)),
                                        label: const Text('Add to Cart',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 150,
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.asset(
                                        'assets/images/burger.jpg', // Replace with your image URL

                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Burger',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        '\$20.00',
                                        style: TextStyle(
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const SizedBox(height: 8),
                                      TextButton.icon(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Productpage()),
                                          );
                                        },
                                        icon: const Icon(Icons.shopping_cart,
                                            color: Color.fromARGB(
                                                255, 175, 76, 111)),
                                        label: const Text('Add to Cart',
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 0, 0, 0))),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ]) // Home button
                      ]),
              ),
              // Bottom Navigation Bar
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex:
                    _selectedIndex, // Ensure the selected index is updated
                onTap: _onItemTapped, // Handle item tap
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
              ));
        }));
  }
}
