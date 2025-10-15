import 'dart:async';
import 'package:flutter/material.dart';



class Assignment2 extends StatefulWidget {
  const Assignment2({super.key});

  @override
  State<Assignment2> createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment2> {
  double time = 1.00;
  int clicks = 0;
  Timer? timer;

  void startGame() {
    timer?.cancel(); // cancel previous timer
    setState(() {
      time = 1.00;
      clicks = 0;
    });

    timer = Timer.periodic(const Duration(milliseconds: 10), (t) {
      setState(() {
        time -= 0.01;
        if (time <= 0) {
          time = 0;
          timer?.cancel();
        }
      });
    });
  }

  void addClick() {
    if (time > 0) {
      setState(() {
        clicks++;
      });
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: 300,
          height: 200,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.pink.shade50,
            border: Border.all(color: Colors.black26),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Timer
              Text(
                time.toStringAsFixed(2),
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              // Click counter
              Text(
                "Click = $clicks",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),

              // Buttons row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Click button
                  ElevatedButton.icon(
                    onPressed: addClick,
                    icon: const Icon(Icons.touch_app),
                    label: const Text("Click"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                    ),
                  ),
                  // Play button
                  ElevatedButton.icon(
                    onPressed: startGame,
                    icon: const Icon(Icons.play_arrow),
                    label: const Text("PLAY"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 12),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
