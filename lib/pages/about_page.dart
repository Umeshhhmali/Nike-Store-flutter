import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // match style
      appBar: AppBar(
        title: const Text("About"),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // App logo
            const SizedBox(height: 50),
            Center(
              child: Image.asset(
                "lib/images/nikelogo.png",
                height: 80,
              ),
            ),
            const SizedBox(height: 50),

            // Title
            const Text(
              "Nike Store App",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // Description
            const Text(
              "This app is a simple Nike shopping experience built with Flutter. "
              "Browse the latest sneakers, add them to your cart, and complete "
              "your checkout with ease. Designed for learning and practice, "
              "it demonstrates Flutter UI, state management with Provider, and navigation.",
              style: TextStyle(fontSize: 16, color: Colors.black87, height: 1.4),
            ),
            const SizedBox(height: 30),

            // Version info
            const Text(
              "App Version",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              "1.0.0",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),

            // Developer info
            const Text(
              "Developed by",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Text(
              "Umesh Mali",
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),

            // Footer
            Center(
              child: Text(
                "© 2025 Nike Store App",
                style: TextStyle(color: Colors.grey[700], fontSize: 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
