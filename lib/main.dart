import 'package:flutter/material.dart';
import 'package:destini/story_brain.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:  AssetImage('media/bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
          constraints: BoxConstraints.expand(),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: StoryQuiz(),
            ),
          ),
        ),
      ),
    );
  }
}


class StoryQuiz extends StatefulWidget {
  const StoryQuiz({Key? key}) : super(key: key);
  @override
  State<StoryQuiz> createState() => _StoryQuizState();
}

class _StoryQuizState extends State<StoryQuiz> {
  final StoryBank1=new StoryBrain();

void storyProgressControl(int userchoice){
  setState((){
    StoryBank1.nextStoryTitle(userchoice);
  });
}


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                StoryBank1.getStoryTitle(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style:  TextButton.styleFrom( backgroundColor: Colors.green),
              onPressed: (){
                storyProgressControl(1);
              },
              child: Text(
                StoryBank1.getStoryChoice1() ,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Visibility(
              visible:StoryBank1.btnVisibalityChk(),
              child: TextButton(
                style:  TextButton.styleFrom( backgroundColor: Colors.red),
                onPressed: (){
                  storyProgressControl(2);
                },

                child: Text(
                  StoryBank1.getStoryChoice2() ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
