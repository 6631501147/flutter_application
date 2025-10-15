import 'package:flutter/material.dart';



class Assignment1 extends StatelessWidget {
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top image
          Expanded(
            flex: 2,
            child: Image.asset(
              'assets/images/baking.jpg', // replace with your image
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),

          // Sign In section
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.black,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Sign in and Sign up row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "SIGN IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "SIGN UP",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // Email TextField
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Text(
                          "@",
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      hintText: "Email Address",
                      hintStyle: const TextStyle(color: Colors.white54),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white54),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Password TextField
                  TextField(
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      prefixIcon:
                          const Icon(Icons.lock, color: Colors.orange),
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.white54),
                      enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white54),
                      ),
                      focusedBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.orange),
                      ),
                    ),
                  ),
                  const Spacer(),

                  // Bottom buttons row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          // First circle button
                          Container(
                            margin: const EdgeInsets.only(right: 12),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white24,
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.android,
                                  color: Colors.white),
                              onPressed: () {},
                            ),
                          ),
                          // Second circle button
                          Container(
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white24,
                            ),
                            child: IconButton(
                              icon: const Icon(Icons.chat,
                                  color: Colors.white),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                      // Arrow button
                      Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_forward,
                              color: Colors.black),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
