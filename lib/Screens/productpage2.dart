import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_fution_fork_mad/theme_provider.dart';

class Productpage2 extends StatelessWidget {
  const Productpage2({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
        themeMode: themeProvider.themeMode,
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('Shushi'),
            backgroundColor: Colors.orange,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Image of the burger
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Shushi1.jpeg',
                      width: double.infinity,
                      //height: 400,
                      fit: BoxFit.cover,
                    ),
                    const Positioned(
                      top: 10,
                      child: Icon(
                        Icons.fastfood,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Burger Title and Price
                const Text(
                  'Spicy Shushi 6 Pcs',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'A Fiery Twist on a Classic Favorite',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '\$15.99',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                const SizedBox(height: 20),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(Icons.local_dining),
                    SizedBox(width: 10),
                    Icon(Icons.local_pizza),
                    SizedBox(width: 10),
                    SizedBox(width: 10),
                  ],
                ),
                const SizedBox(height: 20),
                // Description of the burger
                const Text(
                  'A perfect fusion of bold flavors and fresh ingredients, delivering a delightful kick in every bite!',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                // Cart Icon
                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.orange,
                    child: const Icon(Icons.shopping_cart),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
