import 'story.dart';

class StoryBrain {

  int _storytitleno=0;

  List<Story> _Story_bank=[
    Story(
        'It\'s 2050 Virtual world Games are normal now a days.You have entered the Capsole of Lord\'s Game for the first time, An AI ask you what is your name?' ,
         'I am the "Greatest Lord"',
         'Tell Him your Real name'),
    Story(
        'AI : Please Tell me your Real Name, Because it our policy to avoid scamers/hacker!',
        'Tell him your name',
         'But I want to keep my name Hidden'),
    Story(
        'AI : You got a nice name, What is you Gender!',
       'I am Girl.',
       'I am a boy'),
    Story(
        'AI : Don\'t worry your name will be hidden, Nobody will know your name except me',
        'Tell him your Real name',
        'No, I don\'t want to tell my name.(Restart the game)'),
    Story(
        'AI : We Respect your privacy therefore we allow you to pick the your User name',
         'Andy',
         'Ash'),
    Story(
        'AI : Please pick the starting City',
        'Ajin',
         'Beka'),
    Story(
        'AI : Please restart So that you can start from that City.',
         'Restart',
         '')
  ];

String getStoryTitle()
{
  return _Story_bank[_storytitleno].storyTitle;
}
  String getStoryChoice1()
  {
    return _Story_bank[_storytitleno].choice1;
  }
  String getStoryChoice2()
  {
    return _Story_bank[_storytitleno].choice2;
  }

  void nextStoryTitle(int choiceNumber) {
    if (choiceNumber == 1 && _storytitleno == 0) {
      _storytitleno = 1;
    } else if (choiceNumber == 2 && _storytitleno == 0) {
      _storytitleno = 2;
    } else if (choiceNumber == 1 && _storytitleno == 1) {
      _storytitleno = 2;
    }else if (choiceNumber == 2 && _storytitleno == 1) {
      _storytitleno = 3;
    } else if ( _storytitleno == 2) {
      _storytitleno = 4;
    }else if (choiceNumber == 1 && _storytitleno == 3) {
      _storytitleno = 2;
    }else if (choiceNumber == 2 && _storytitleno == 3) {
      restartStory();
    } else if ( _storytitleno == 4) {
      _storytitleno = 5;
    }else if (_storytitleno == 5) {
      _storytitleno = 6;
    } else if (choiceNumber == 1 && _storytitleno == 6) {
      restartStory();
    }
  }

  void restartStory(){
    _storytitleno=0;
  }

  bool btnVisibalityChk(){
      if( _storytitleno == 6)
        {
          return false;
        }
      else
        return true;
  }

}

class StoryBrainOrg {

  int _storytitleno=0;

  List<Story> _Story_bank=[
    Story(

        'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        'I\'ll hop in. Thanks for the help!',
        'Better ask him if he\'s a murderer first.'),
    Story(
        'He nods slowly, unphased by the question.',
        'At least he\'s honest. I\'ll climb in.',
        'Wait, I know how to change a tire.'),
    Story(

        'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        'I love Elton John! Hand him the cassette tape.',
        'It\'s him or me! You take the knife and stab him.'),
    Story(

        'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        'Restart',
        ''),
    Story(

        'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        'Restart',
        ''),
    Story(

        'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        'Restart',
        '')
  ];

  String getStoryTitle()
  {
    return _Story_bank[_storytitleno].storyTitle;
  }
  String getStoryChoice1()
  {
    return _Story_bank[_storytitleno].choice1;
  }
  String getStoryChoice2()
  {
    return _Story_bank[_storytitleno].choice2;
  }

  void nextStoryTitle(int choiceNumber) {
    //TODO: Step 21 - Using the story plan, update nextStory to change the storyNumber depending on the choice made by the user.
    //When user is on story0 and they chose choice1, the story should progress to story2.
    if (choiceNumber == 1 && _storytitleno == 0) {
      _storytitleno = 2;
    } else if (choiceNumber == 2 && _storytitleno == 0) {
      _storytitleno = 1;
    } else if (choiceNumber == 1 && _storytitleno == 1) {
      _storytitleno = 2;
    } else if (choiceNumber == 2 && _storytitleno == 1) {
      _storytitleno = 3;
    } else if (choiceNumber == 1 && _storytitleno == 2) {
      _storytitleno = 5;
    } else if (choiceNumber == 2 && _storytitleno == 2) {
      _storytitleno = 4;
    }
    //TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
    else if (_storytitleno == 3 || _storytitleno == 4 || _storytitleno == 5) {
      restartStory();
    }
  }

  void restartStory(){
    _storytitleno=0;
  }


}