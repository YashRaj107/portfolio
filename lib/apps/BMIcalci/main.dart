import 'package:flutter/material.dart';

import 'BMICalculator/login_screen.dart';

void main() {
  runApp(const Calci());
}

class Calci extends StatelessWidget {
  const Calci({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMICalculator',
      theme: ThemeData.dark(),
      home:  LoginScreen(),
    );
  }
}
