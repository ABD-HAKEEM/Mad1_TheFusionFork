import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_fution_fork_mad/Screens/accountscreen.dart';
import 'package:the_fution_fork_mad/Screens/cartsscreen.dart';
import 'package:the_fution_fork_mad/Screens/productpage2.dart';
import 'package:the_fution_fork_mad/screens/homescreen.dart';
import 'package:the_fution_fork_mad/screens/productpage.dart';
import 'package:the_fution_fork_mad/theme_provider.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _selectedIndex = 1;

  // void initState() {
  //   super.initState();
  //   _loadTheme(); // Load theme preference on init
  // }

  // Load the saved theme from SharedPreferences
  // void _loadTheme() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   setState(() {
  //     _isDarkMode = prefs.getBool('darkMode') ?? false; // Default to light mode
  //   });
  // }

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
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
        themeMode: themeProvider.themeMode,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
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
                            padding: const EdgeInsets.symmetric(horizontal: 24),
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
                                const SizedBox(height: 16),
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
                                          const SizedBox(width: 16),
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
                                                                      160,
                                                                      28,
                                                                      28))),
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
                                                                      160,
                                                                      28,
                                                                      28))),
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
                                                                        160,
                                                                        28,
                                                                        28))),
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
                                                                        160,
                                                                        28,
                                                                        28))),
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
                                                                        160,
                                                                        28,
                                                                        28))),
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
                                                                        160,
                                                                        28,
                                                                        28))),
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
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          reverse: true, // Enables right-to-left scrolling
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center, // Centers
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
                                        'assets/images/burger.jpg',
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
                                        'assets/images/Shushi1.jpeg',
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Shushi',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        '\$18.00',
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
                                        'assets/images/sashimi.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Sashimi',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        '\$10.00',
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
                                        'assets/images/risotto.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'risotto',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        '\$16.00',
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
                                        'assets/images/pizza.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        'Pizza',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      const SizedBox(height: 8),
                                      const Text(
                                        '\$23.00',
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
                        ),
                        SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            reverse: true, // Enables right-to-left scrolling
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                            'assets/images/lasagna.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(height: 8),
                                          const Text(
                                            'Lasagna',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(height: 8),
                                          const Text(
                                            '\$24.00',
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
                                            icon: const Icon(
                                                Icons.shopping_cart,
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
                                            'assets/images/spaghetti.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(height: 8),
                                          const Text(
                                            'Spaghetti Bolognese',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(height: 8),
                                          const Text(
                                            '\$12.00',
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
                                            icon: const Icon(
                                                Icons.shopping_cart,
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
                                            'assets/images/burger.jpg',
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
                                            icon: const Icon(
                                                Icons.shopping_cart,
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
                                            'assets/images/takoyaki.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(height: 8),
                                          const Text(
                                            'Takoyaki',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(height: 8),
                                          const Text(
                                            '\$13.00',
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
                                            icon: const Icon(
                                                Icons.shopping_cart,
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
                                            'assets/images/Chicken-Tikka.jpg',
                                            fit: BoxFit.cover,
                                          ),
                                          const SizedBox(height: 8),
                                          const Text(
                                            'Chicken tikka',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                          const SizedBox(height: 8),
                                          const Text(
                                            '\$10.00',
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
                                            icon: const Icon(
                                                Icons.shopping_cart,
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
                                ]))
                      ]),
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
              ));
        }));
  }
}
