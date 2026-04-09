import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool clicou = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: InkWell(
            onTap: () {
              setState(() {
                clicou = !clicou;
              });
            },
            child: AnimatedAlign(
              alignment: clicou ? Alignment.topRight : Alignment.bottomLeft,
              duration: Duration(seconds: 2),
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: clicou ? Colors.orange : Colors.blue,
                  borderRadius: clicou
                      ? BorderRadius.circular(50)
                      : BorderRadius.circular(0),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
