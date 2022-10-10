import 'package:flutter/material.dart';
import 'package:vote/widgets.dart';

import 'choices.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({Key? key}) : super(key: key);

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Hi, N I G E R I A N',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        TextField(
          controller: _textEditingController,
        ),
        SubmitButtons(
          text: 'Get started',
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Choices()));
          },
        )
      ],
    );
  }
}
// ()
