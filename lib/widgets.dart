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
        padding: EdgeInsets.all(12),
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            gradient: const LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  Colors.green,
                  Colors.white,
                  Colors.green,
                ],
                tileMode: TileMode.mirror),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.green.shade900, width: 2.5)),
        child: Text(
          text,
          textAlign: TextAlign.center,
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
