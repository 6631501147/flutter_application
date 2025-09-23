import 'dart:math';
import 'package:flutter/material.dart';



class Guess extends StatelessWidget {
  const Guess({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GuessGame(),
    );
  }
}

class GuessGame extends StatefulWidget {
  const GuessGame({super.key});

  @override
  State<GuessGame> createState() => _GuessGameState();
}

class _GuessGameState extends State<GuessGame> {
  final TextEditingController guessController = TextEditingController();
  int answer = Random().nextInt(10);
  int chances = 3;
  String message = "Guess a number between 0–9";

  void guess() {
    if (chances == 0) return;

    final guess = int.tryParse(guessController.text);
    if (guess == null) {
      setState(() => message = "Enter a valid number.");
      return;
    }

    setState(() {
      chances--;
      if (guess == answer) {
        message = "🎉 Correct! The answer was $answer.";
        chances = 0;
      } else if (chances == 0) {
        message = "❌ Out of chances! The answer was $answer.";
      } else if (guess > answer) {
        message = "Too high! Chances left: $chances";
      } else {
        message = "Too low! Chances left: $chances";
      }
    });
  }

  void replay() {
    setState(() {
      answer = Random().nextInt(10);
      chances = 3;
      message = "Guess a number between 0–9";
      guessController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Guessing Game")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: guessController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Enter your guess"),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: guess, child: const Text("Guess")),
                ElevatedButton(onPressed: replay, child: const Text("Replay")),
              ],
            ),
            const SizedBox(height: 20),
            Text(message, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
