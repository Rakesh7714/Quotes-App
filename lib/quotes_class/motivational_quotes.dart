import 'package:flutter/material.dart';
import 'package:quotes_app/cardmodel/card_model.dart';
class MotivationalQuotes extends StatelessWidget {
  int index= 0;
  List<String> quotes = [
    "Do one thing every day that scares you.",
    "Happiness is not something ready made. It comes from your own actions.",
    "Whatever you are, be a good one.",
    "Don’t be afraid to give up the good to go for the great.",
    "One day or day one. You decide.",
    "Don't give up. The beginning is always the hardest",
    "Learn to be alone not everyone will stay forever.",
    "Never settle for less than you deserve.",
    "It's never to late to make it right.",
    "If you believe in yourself things are possible",
    "You never fail until you stop trying",
    "Know yourself you are unique.",
    "Be you The world will adjust",
    "Dear me I will make you proud one day.",
    "Believe in yourself everything gonna right",
    "Every pain gives a lesson and every lesson changes a person.",
    "Life become beautiful when you start to live your life in your own style.",
    "Don't lose hope you never know what tomorrow will bring.",
    "Take responsibility of your own happiness never put it in other people's hands",
    "You don't have to be wrong for someone to be right",

  ];
  MotivationalQuotes({Key? key}) : super(key: key);

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
          title: const Text('Motivational Quotes'),
          centerTitle: true,
        ),
        backgroundColor: Colors.blueGrey,
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