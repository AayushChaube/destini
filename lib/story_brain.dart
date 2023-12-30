import 'story.dart';

class StoryBrain {
  int _storyNumber = 0;

  final List<Story> _storyData = [
    Story(
      storyText:
          'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      firstChoiceText: 'I\'ll hop in. Thanks for the help!',
      secondChoiceText: 'Better ask him if he\'s a murderer first.',
    ),
    Story(
      storyText: 'He nods slowly, unphased by the question.',
      firstChoiceText: 'At least he\'s honest. I\'ll climb in.',
      secondChoiceText: 'Wait, I know how to change a tire.',
    ),
    Story(
      storyText:
          'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      firstChoiceText: 'I love Elton John! Hand him the cassette tape.',
      secondChoiceText: 'It\'s him or me! You take the knife and stab him.',
    ),
    Story(
      storyText:
          'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      firstChoiceText: 'Restart',
      secondChoiceText: '',
    ),
    Story(
      storyText:
          'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      firstChoiceText: 'Restart',
      secondChoiceText: '',
    ),
    Story(
      storyText:
          'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      firstChoiceText: 'Restart',
      secondChoiceText: '',
    )
  ];

  String getStory() => _storyData.elementAt(_storyNumber).storyText;

  String getFirstChoice() => _storyData.elementAt(_storyNumber).firstChoiceText;

  String getSecondChoice() => _storyData.elementAt(_storyNumber).secondChoiceText;

  void nextStory(int choiceNumber) {
    if (_storyNumber == 0 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 0 && choiceNumber == 2) {
      _storyNumber = 1;
    } else if (_storyNumber == 1 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 1 && choiceNumber == 2) {
      _storyNumber = 3;
    } else if (_storyNumber == 2 && choiceNumber == 1) {
      _storyNumber = 5;
    } else if (_storyNumber == 2 && choiceNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    } else {
      null;
    }
  }

  void restart() => _storyNumber = 0;
}

//TODO: Step 25 - Change the storyNumber property into a private property so that only story_brain.dart has access to it. You can do this by right clicking on the name (storyNumber) and selecting Refactor -> Rename to make the change across all the places where it's used.

//TODO: Step 27 - Create a method called buttonShouldBeVisible() which checks to see if storyNumber is 0 or 1 or 2 (when both buttons should show choices) and return true if that is the case, else it should return false.