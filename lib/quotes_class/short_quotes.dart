import 'package:flutter/material.dart';
import 'package:quotes_app/cardmodel/card_model.dart';
class ShortQuotes extends StatelessWidget {
  int index= 0;
  List<String> quotes = [
    "Change the world by being yourself. ",
    "Die with memories, not dreams.",
    "Whatever you do, do it well",
    "Be so good they can’t ignore you",
    "Try to be a rainbow in someone’s cloud.",
    "And still, I rise",
    "It hurt because it mattered",
    "I have nothing to lose but something to gain",
    "Try to be a rainbow in someone’s cloud",
    "Be yourself",
    "Be happy with what you have",
    "Aspire to inspire before we expire.",
    "Never regret anything that made you smile",
    "Time will tell",
    "Make Today wonderful day",
    "Believe on your dream it will come true",
    "Don't Quite",
    "Be nice for no reason",
    "Stay positive",
    "Do what you like",
    "try try try ",
    "Learn to stand alone",
    "Trust the timing of life",
    "DO IT NOW",
    "Real is rare",


  ];
  ShortQuotes({Key? key}) : super(key: key);

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
          title: const Text('Short Quotes'),
          centerTitle: true,
        ),
        backgroundColor: Colors.brown,
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