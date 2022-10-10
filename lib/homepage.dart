import 'package:flutter/material.dart';

import 'entry.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              // stops: [.5, .3],
              colors: [
                Colors.white,
                Colors.green,
                Colors.white,
              ],
              tileMode: TileMode.mirror)),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.85),
              ]),
        ),
        child: const Scaffold(
          body: EntryPage(),
        ),
      ),
    );
  }
}
// ()
