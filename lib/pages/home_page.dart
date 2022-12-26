import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> img = [
    'assets/images/forfirst.jpg',
    'assets/images/forsecond.jpg',
    'assets/images/forthird.jpg',
    'assets/images/forfourth.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Apple Products',
          style: TextStyle(
            letterSpacing: 1,
            fontSize: 20,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(child: Text('7')),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                // gradient:
                //     LinearGradient(colors: [Colors.black12, Colors.black]),
                image: const DecorationImage(
                  image: AssetImage('assets/images/forthird.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    'Lifestyle sale',
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
                child: ListView(
              children: img.map((e) => gridItem(e)).toList(),
            )),
          ],
        ),
      ),
    );
  }

  Widget gridItem(String path) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
      padding: const EdgeInsets.all(10),
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(path), fit: BoxFit.cover),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          )
        ],
      ),
    );
  }
}
