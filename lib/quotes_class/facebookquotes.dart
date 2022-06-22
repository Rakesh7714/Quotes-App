import 'package:flutter/material.dart';
import 'package:quotes_app/cardmodel/card_model.dart';
class FacebookQuotes extends StatelessWidget {
  int index= 0;
  List<String> quotes = [
    "Do what you love ",
    "one day i will prove who I am?",
    "Good thing takes time",
    "The pain you get today will be the strength of the tomorrow",
    "Be better in real life",
    "So you are checking my status",
    "Don't tell people your plans.Shows them your results",
    "I born to express not to impress",
    "Totally single Totally free Totally happy",
    "Life hurts a lot more than the death",
    "A true friends is the greatest of all blessing.",
    "Good times + crazy friends = Amazing memories",
    "Collect moments not things",
    "Travel far enough to meet yourself",
    "Sometimes it's better to be alone so no one will hurt you",
    "Life is hard but not impossible",
    "I have an attitude because i have earned it",
    "Sometime you win and sometimes you learn",
    "We all are bad on someone story",
    "Be your best",
    "No one is perfect that's why pencils has erasers "
    "Be a priority not an option",
    "Never force someone to stay in Your life",
    "Be real with me i am tired with fake people",
    "Having one right person is enough",
    "Don't forget to smile",
    "Key to happiness is stop comparing yourself with other",
    "I am pretending to be okay in front of you ",
    "Just one mistake and everyone will judge you",
    "The though of losing you scare me",
    "Believe in your self a little more",
    "Use things not people",
    "Not all promise are fake",
    "Don't ignore the truth for the temporary happiness",
    "Love me or hate me i am still gonna shine",
    "Tough time never last but the tough people do",
    "If you fall in love don't blame gravity",
    "Rise smile and just follow your dream",
    "Memories are beautiful and painful",
    "Real is rare fake is everywhere",

  ];
  FacebookQuotes({Key? key}) : super(key: key);

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
          title: const Text('Facebook Quotes'),
          centerTitle: true,
        ),
        backgroundColor: Colors.purpleAccent.shade400,
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