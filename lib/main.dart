import 'package:flutter/material.dart';

import 'homepage.dart';

void main() {
  runApp(const Vote());
}

class Vote extends StatelessWidget {
  const Vote({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

// ()
