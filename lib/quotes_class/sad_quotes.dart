import 'package:flutter/material.dart';
import 'package:quotes_app/cardmodel/card_model.dart';
class SadQuotes extends StatelessWidget {
  int index= 0;
  List<String> quotes = [
    "When your intentions are pure, you don't loose anyone. They lose you ",
    "people will promise to stay forever But they will leave you in the middle",
    "I act like  i don't care but deep inside its hurts.",
    "Enjoy every moments Death is unexpected",
    "Sometimes you will never know the value of a moments until it becomes a memory",
    "You are not ugly the society is ",
    "Distance will teach you the real meaning of closeness",
    "Some people teach us to let go",
    "people change so fast yesterday they cared but today don't.",
    "Full of love but low on trust",
    " I have trouble telling people how I feel.",
    "I never let anyone cry but still people don’t want me to smile.",
    " I wish I could hurt you the way you hurt me.",
    "No matter how much you have heart me i still pray for you everyday",
    "Why i am so afraid to lose  yoy when you are not even mine",
    "I fell for you but you didn't catch me",
    "i am not just a toy you can play with when all your other toys are broken",
    "Truth hurt for a little while but lie hurt for a lifetime",
    "Smile no one  will see you how broken you are",
    "Only you can put smile on my face when i am sad",
    "Missing someone but trying to forget . it's not easy",
    "Don't cheat if you are not happy just leave",
    "cannot trust anyone these day fake is new trends",
    "I pretending to be okay in front of you",
    "The world is full of danger and you have to fight alone",
    "I want to forget you but my heart can't",
    "I miss the old one you"
    "One day you gonna miss me but i will be absence...."
    "Slow replies make me think you're talking to someone better than me ",
    "Nobody is busy it's just priorities matter in their life",
    "Where the money talks poor has no voice",
    "Ever little lie you lie bring us closer to good bye",
    ""

  ];
  SadQuotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },),
          backgroundColor: Colors.transparent,
          title: const Text('Sad Quotes'),
          centerTitle: true,
        ),
        backgroundColor: Colors.purple,
        body: ListView.builder(
            itemCount: quotes.length
            ,
            itemBuilder:(BuildContext context , int index) {
              return CardClass(color: Colors.transparent, num: '${index+1}',
                  title1:quotes[index % quotes.length] );
            }
        ),
      ),

    );

  }
}