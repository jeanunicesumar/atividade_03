import 'package:flutter/material.dart';

class Extrato extends StatelessWidget {
  const Extrato({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meu primeiro"),
      ),
      body: const Text("Teste"),
      backgroundColor: Color.fromARGB(255, 84, 143, 7),
    );
  }
}
