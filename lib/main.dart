import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Images & Assets Lab"),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Network Image:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Image.network(
              "https://plus.unsplash.com/premium_photo-1683910767532-3a25b821f7ae?w=400",
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 40),
            const Text(
              "Local Asset Image:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // TODO 3: Display a local image from your project folder.
            // - Ensure you have completed TODO 2 in pubspec.yaml first!
            // - Replace the SizedBox below with an Image.asset() widget.
            // - Use the path: "assets/img-2.webp" (make sure this file exists in your repository).
            Image.asset(
              "assets/img-2.webp",
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[800],
        child: const Center(child: Text("Click")),
      ),
    );
  }
}
