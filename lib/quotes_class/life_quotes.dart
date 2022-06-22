import 'package:flutter/material.dart';

import '../cardmodel/card_model.dart';
class LifeQuotes extends StatelessWidget {
  int index= 0;
  List<String> quotes = [
    "Life is like a clay ",
    " Distance doesn’t ruin a relationship,doubts do",
    "All you need in this life is ignorance and confidence; then success is sure.",
    "I don't go by the rule book…I lead from the heart, not the head.",
    "Life doesn't have a remote get up and change it yourself",
    "Life is not to solve the problem but reality is to be experienced",
    "Take a deep breath its just a bad day not a bad life.",
    "You can't live a positive life with a negative mind.",
    "There are no any mistake in life ,just lessons.",
    "Enjoy life its come with expire date.",
    "People are not oxygen you can live without them",
    "Learn to rest not to Quite",
    "Tough time never last but the tough people do",
    "You are the artist of your own life",
    "Keep doing things life is all about learning",
    "Happy and the sadness is the part of the life",
    "A smile can hide so much pain",
    "Nothing loses my interest faster than someone lying to me",



  ];
  LifeQuotes({Key? key}) : super(key: key);

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
          title: const Text('Life Quotes'),
          centerTitle: true,
        ),
        backgroundColor: Colors.deepPurple,
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
    // return CardClass(color: Colors.white, num: '1', title1: 'I am fucking in stress');
  }
}
