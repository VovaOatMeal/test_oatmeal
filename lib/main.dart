import 'package:flutter/material.dart';
import 'package:test_oatmeal/routes/home_page.dart';

void main() {
  runApp(const Main());
}

/// Main class that holds the app.
class Main extends StatelessWidget {
  /// Creates main class that holds the app.
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Color Generator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
