import 'package:flutter/material.dart';

class DesignThree extends StatelessWidget {
  const DesignThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[300], // Pink background
      body: SafeArea(
        child: Column(
          children: [
            // Main content centered in the middle
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min, // fit only the children
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Title
                    Text(
                      "Wedding Organizer",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: "Sevillana",
                        fontSize: 36,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Subtitle
                    Text(
                      "Pre-wedding, Photo, Party",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: "Sevillana",
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 12,
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Our services",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Footer always at bottom
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                "345 Moo 1 Tasud Chiang Rai, Thailand",
                textAlign: TextAlign.center,
                style: const TextStyle(
                 
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
