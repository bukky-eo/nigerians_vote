import 'vote.dart';

class VoteBrain {
  int voteNumber = 0;
  final List<Vote> _storyData = [
    Vote(
      voteTitle: "Are you 18+ and have your Voter's slip/card",
      choice1: 'Yes',
      choice2: 'No',
      choice3: 'Not Really',
    ),
    Vote(
      voteTitle: "You are not doing well",
      choice1: 'Exit',
      choice2: '',
      choice3: '',
    ),
    Vote(
      voteTitle: 'Do you intend to vote in the upcoming 2023 elections',
      choice1: 'Yes',
      choice2: 'No',
      choice3: '',
    ),
    Vote(
      voteTitle: 'You are not doing the right thing',
      choice1: 'Exit',
      choice2: 'No',
      choice3: '',
    ),
    Vote(
        voteTitle: 'Yayy, Who is your preferred presidential candidate? ',
        choice1: 'Peter Obi',
        choice2: 'Bola Ahmed Tinubu',
        choice3: 'Atiku Abubakar'),
    Vote(
        voteTitle:
            'Yayyy, You are the right track to make Nigeria a better place',
        choice1: "Let's go",
        choice2: '',
        choice3: ''),
    Vote(
      voteTitle: "It's not a curse, but you will see shege",
      choice1: 'Restart',
      choice2: '',
      choice3: '',
    ),
    Vote(
      voteTitle: "You can do better than this",
      choice1: 'Restart',
      choice2: '',
      choice3: '',
    ),
    Vote(
      voteTitle:
          "Keep spreading the word about the elections and our Next President",
      choice1: 'Restart',
      choice2: '',
      choice3: '',
    )
  ];

  void nextStory(int choiceNumber) {
    if (choiceNumber == 1 && voteNumber == 0) {
      voteNumber = 2;
    } else if (choiceNumber == 2 && voteNumber == 0) {
      voteNumber = 1;
    } else if (choiceNumber == 1 && voteNumber == 1) {
      reset();
    } else if (choiceNumber == 1 && voteNumber == 2) {
      voteNumber = 4;
    } else if (choiceNumber == 2 && voteNumber == 2) {
      voteNumber = 3;
    } else if (choiceNumber == 1 && voteNumber == 3) {
      reset();
    } else if (choiceNumber == 1 && voteNumber == 4) {
      voteNumber = 5;
    } else if (choiceNumber == 1 && voteNumber == 5) {
      voteNumber = 8;
    } else if (choiceNumber == 2 && voteNumber == 4) {
      voteNumber = 6;
    } else if (choiceNumber == 3 && voteNumber == 4) {
      voteNumber = 7;
    } else if (choiceNumber == 2 ||
        choiceNumber == 1 ||
        voteNumber == 8 ||
        voteNumber == 6 ||
        voteNumber == 7) {
      reset();
    }
  }

  String getStory() {
    return _storyData[voteNumber].voteTitle;
  }

  String getChoice3() {
    return _storyData[voteNumber].choice3;
  }

  String getChoice1() {
    return _storyData[voteNumber].choice1;
  }

  String getChoice2() {
    return _storyData[voteNumber].choice2;
  }

  void reset() {
    voteNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (voteNumber == 1 || voteNumber == 2 || voteNumber == 0) {
      return true;
    } else {
      return false;
    }
  }
}
