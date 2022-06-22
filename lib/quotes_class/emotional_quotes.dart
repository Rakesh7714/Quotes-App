import 'package:flutter/material.dart';
import 'package:quotes_app/cardmodel/card_model.dart';
class EmotionalQuotes extends StatelessWidget {
  int index= 0;
  List<String> quotes = [
    "Everyone's nice at first and their colours reveal. ",
    "Responsibility makes you mature,not age",
    "Behind my smile is everything you’ll never understand",
    "I wish I could undo all the things that broke us",
    "We all need someone we can surrender our emotions too.",
    " I heal slowly, but I get hurt fast.",
    "I’m learning to trust again please don’t fuck it up.",
    "I miss the old me happy me",
    "I don't lose people people lose me ",
    "Try to be apart from the bitter people",
    "Never heart anyone because Every one has same feeling",
    "Don't trust too much one day you gonna break",
    "Tears have no weight but its can carry heavy feelings",
    "Feeling don't die easily because the heart keep feeding with the memories",
    "My silence is just another word for my pain.",

  ];
  EmotionalQuotes({Key? key}) : super(key: key);

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
          title: const Text('Emotional Quotes'),
          centerTitle: true,
        ),
        backgroundColor: Colors.green,
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