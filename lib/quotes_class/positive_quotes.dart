import 'package:flutter/material.dart';
import 'package:quotes_app/cardmodel/card_model.dart';
class PositiveQuotes extends StatelessWidget {
  int index= 0;
  List<String> quotes = [
    "One small positive thought can change your whole day ",
    "Trust is more than the love",
    "Value your peace more than people's opinions",
    "Doesn't matter how broken you are you can always start and be better than before.",
    "Don't wait for the right time create it",
    "Ever new day is another chance to change change life",
    " Nothing can be hidden forever.",
    "Everything is possible when you believe on it",
    "I will success in life not immediately but definitely",
    "Everyday is new beginning Take deep breath and start again ",
    "Having a real friend is blessing",
    "Believe in yourself a little more",
    "Love has no color",
    "Believe in your dream it will come true",
    "Every end brings a new beginning",
    "When its real you cannot walk away",
    "Don't ignore the truth for the temporary happiness",
    "Don't shy at 4 things : old cloth poor friends old mom and dad & simple living",
    "Be someone light when they are hopeless",
    "Don't let the same snake bite you twice",
    "The truth is real rarely pure and never simple",



  ];
  PositiveQuotes({Key? key}) : super(key: key);

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
          title: const Text('Positive Quotes'),
          centerTitle: true,
        ),
        backgroundColor: Colors.teal,
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