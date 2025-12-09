import 'package:flutter/material.dart';
import 'price.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const discount = 0.1;
    final total = calculateTotal(10, 3, discount: discount);

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("CI Demo with Codemagic (GUI)")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total: $total",
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 8),
              Text(
                "Discount: ${(discount * 100).toStringAsFixed(0)}%",
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
