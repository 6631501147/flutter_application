import 'package:flutter/material.dart';

class Cal extends StatelessWidget {
  const Cal({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SumApp(),
    );
  }
}

class SumApp extends StatefulWidget {
  const SumApp({super.key});

  @override
  State<SumApp> createState() => _SumAppState();
}

class _SumAppState extends State<SumApp> {
  final TextEditingController num1Controller = TextEditingController();
  final TextEditingController num2Controller = TextEditingController();

  String message = "";        // result or error text
  Color messageColor = Colors.black54;

  void calculate() {
    final t1 = num1Controller.text.trim();
    final t2 = num2Controller.text.trim();

    if (t1.isEmpty || t2.isEmpty) {
      setState(() {
        message = "Missing input";
        messageColor = Colors.redAccent;
      });
      return;
    }

    final n1 = int.tryParse(t1);
    final n2 = int.tryParse(t2);

    if (n1 == null || n2 == null) {
      setState(() {
        message = "Incorrect input";
        messageColor = Colors.redAccent;
      });
      return;
    }

    setState(() {
      message = "Result: ${n1 + n2}";
      messageColor = Colors.blue;
    });
  }

  void clear() {
    num1Controller.clear();
    num2Controller.clear();
    setState(() {
      message = "";
      messageColor = Colors.black54;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5eefb), // light card-like bg (optional)
      appBar: AppBar(title: const Text("Summation App")),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView( // avoids overflow when keyboard opens
            padding: const EdgeInsets.all(20),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 420),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // --------- TextFields row ----------
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: TextField(
                          controller: num1Controller,
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: false, decimal: false),
                          decoration: const InputDecoration(
                            labelText: "First number",
                          ),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text("+",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600)),
                      const SizedBox(width: 12),
                      Expanded(
                        child: TextField(
                          controller: num2Controller,
                          keyboardType: const TextInputType.numberWithOptions(
                              signed: false, decimal: false),
                          decoration: const InputDecoration(
                            labelText: "Second number",
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // --------- Buttons ----------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ElevatedButton(
                        onPressed: calculate,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff1e88e5),
                          shape: const StadiumBorder(),
                          elevation: 3,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                        ),
                        child: const Text("Calculate"),
                      ),
                      const SizedBox(width: 16),
                      ElevatedButton(
                        onPressed: clear,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          shape: const StadiumBorder(),
                          elevation: 3,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                        ),
                        child: const Text("Clear"),
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  // --------- Message (result / error) ----------
                  if (message.isNotEmpty)
                    Text(
                      message,
                      style: TextStyle(fontSize: 16, color: messageColor),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
