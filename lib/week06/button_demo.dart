import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // 🔹 First OverflowBar - Icon Buttons
            OverflowBar(
              alignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    debugPrint('icon button');
                  },
                  icon: const Icon(Icons.volume_up, color: Colors.red),
                ),
                Ink(
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(
                      side: BorderSide(color: Colors.green),
                    ),
                    color: Colors.blue,
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.android, color: Colors.white),
                  ),
                ),
                Ink(
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(
                      side: BorderSide(color: Colors.red),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.android, color: Colors.green),
                  ),
                ),
              ],
            ),

            // 🔹 Second OverflowBar - Outlined Button
            OverflowBar(
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.amber,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(80)),
                    ),
                  ),
                  child: const Text('OutlinedButton'),
                ),
              ],
            ),

            // 🔹 Third OverflowBar - Text Buttons
            OverflowBar(
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('TextButton'),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    side: const BorderSide(color: Colors.grey, width: 1),
                  ),
                  child: const Text('TextButton'),
                ),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text('TextButton'),
                ),
              ],
            ),

            // 🔹 Fourth OverflowBar - Elevated Buttons
            OverflowBar(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Elevated'),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: <Color>[
                          Color(0xFF0D47A1),
                          Color(0xFF1976D2),
                          Color(0xFF42A5F5),
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.all(10.0),
                    child: const Text(
                      'Elevated',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            OverflowBar(
              alignment: MainAxisAlignment.center,
              children:[
                 TextButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.fast_forward),
          label: const Text('Skip'),
        ),
FilledButton.icon(
          onPressed: () {},
          icon: const Icon(Icons.chat_bubble_outline),
          iconAlignment: IconAlignment.end,
          label: const Text('LEARN MORE'),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
          ),
        ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
