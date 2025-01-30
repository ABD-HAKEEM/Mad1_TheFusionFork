import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_fution_fork_mad/theme_provider.dart';

class Productpage extends StatelessWidget {
  const Productpage({super.key});

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
            title: const Text('Burger Menu'),
            backgroundColor: Colors.orange,
          ),
          body: OrientationBuilder(
            builder: (context, orientation) {
              if (orientation == Orientation.portrait) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Image of the burger
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/images/burgeranm.png',
                            width: double.infinity,
                            height: 400,
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
                        'Royal Special Burger',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Hot Beef Burger',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        '\$7.50',
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
                        'The combination of fresh and juicy vegetables gives this salad an invigorating flavor.',
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
                );
              } else {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Image.asset(
                              'assets/images/burgeranm.png',
                              width: double.infinity,
                              height: 250,
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
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            const Text(
                              'Royal Special Burger',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Hot Beef Burger',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              '\$7.50',
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
                              'The combination of fresh and juicy vegetables gives this salad an invigorating flavor.',
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
                    ],
                  ),
                );
              }
            },
          ),
        ));
  }
}
