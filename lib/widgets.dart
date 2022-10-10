import 'package:flutter/material.dart';

class SubmitButtons extends StatelessWidget {
  final String text;
  final Function() onTap;
  const SubmitButtons({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 55,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft,
              // stops: [.5, .3],
              colors: [
                Colors.white,
                Colors.green,
                Colors.white,
              ],
              tileMode: TileMode.mirror),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.green.shade700),
        ),
      ),
    );
  }
}
// ()
