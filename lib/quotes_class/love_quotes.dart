import 'package:flutter/material.dart';
import 'package:quotes_app/cardmodel/card_model.dart';
class LoveQuotes extends StatelessWidget {
  int index= 0;
  List<String> quotes = [
    "This is for the Emotional quotes ",
    "Every time I see you, I fall in love all over again",
    "You are one of those beautiful things that happened to my life and made my life worthwhile",
    "Love is sweet when it’s new, but sweeter when it’s true.",
    "There is No Scale to Measure the love…",
    "My real smile comes out when I am with you ",
    "A day without you is always incomplete",
    "When I dream, I dream of you. Maybe one day, dreams will come true. Because I really love you",
    "I’ve fallen in love many times but always with you",
    "You have no idea how fast my heart beats when I see you!",
    "Be aware to touch me… you may be a victim of Love.",
    "I wish I could turn back the clock. I’d find you sooner and love you longer",
    "I promise you no one will ever love you as I do.",
    "I want to see you smiling Always",
    "Distance is nothing when the love is real",
    "You are still important to me with or without conservation",
    "I don't want anything i just want to spend time with you",
    "You deserve someone who is sure about you",
    "Falling in love is easy But staying in love is very special.",
    "Everyday is Valentine day when you are in the right relationship",
    "Having one right person is enough",
    "I will always love  you . until my heart stops beating",
    "I wish i can show you that how much i love you.",
    "You make my day beautiful and nights wonderful",
    "I want to be with you twice....Now and forever.",
    "I will always love you until my heart stop beating",
    "I want to be in your arms where you hold me tight and never let me go"
    "Love is same for a poor man and king",
    "You stole my heart but i'll let you keep it",
    "I don't know why my heart still searching you",
    "The best proof of love is trust",
    "Real love isn't easy and easy love isn't real"
    "I have nothing but i promise you to give you everything"


  ];
  LoveQuotes({Key? key}) : super(key: key);

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
          backgroundColor: Colors.pink,
          title: const Text('Love Quotes'),
          centerTitle: true,
        ),
        backgroundColor: Colors.pink,
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