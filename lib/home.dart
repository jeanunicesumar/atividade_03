import 'package:app_conta_bancaria/views/customForm.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Form Validation Demo';

    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(31, 0, 0, 0))),
      color: const Color.fromARGB(31, 0, 0, 0),
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const Customform(),
      ),
    );
  }
}
