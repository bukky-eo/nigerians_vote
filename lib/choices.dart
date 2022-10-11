import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vote/vote_brain.dart';
import 'package:vote/widgets.dart';

class Choices extends StatefulWidget {
  const Choices({Key? key}) : super(key: key);

  @override
  State<Choices> createState() => _ChoicesState();
}

class _ChoicesState extends State<Choices> {
  VoteBrain voteBrain = VoteBrain();
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.width;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight,
      width: screenWidth,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.green,
            Colors.white,
            Colors.green,
          ],
          stops: [
            0.3,
            0.5,
            0.7,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Padding(
          padding:
              const EdgeInsets.only(top: 25, left: 35.0, right: 35, bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  voteBrain.getStory(),
                  style: TextStyle(
                    fontSize: 25.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SubmitButtons(
                onTap: () {
                  setState(() {
                    voteBrain.nextStory(1);
                  });
                },
                text: voteBrain.getChoice1(),
              ),
              SizedBox(
                height: 20.0,
              ),
              SubmitButtons(
                onTap: () {
                  setState(() {
                    voteBrain.nextStory(2);
                  });
                },
                text: voteBrain.getChoice2(),
              ),
              SizedBox(
                height: 20.0,
              ),
              SubmitButtons(
                onTap: () {
                  setState(() {
                    voteBrain.nextStory(3);
                  });
                },
                text: voteBrain.getChoice3(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// ()
