import 'package:flutter/material.dart';
import 'package:quotes_app/cardmodel/card_model.dart';
class YourselfQuotes extends StatelessWidget {
  int index= 0;
  List<String> quotes = [
    "Be strong and smile at life even though it hurts sometimes. ",
    "Value your peace more than people's opinions",
    "When you care less you are happier",
    "Don't let anyone to steal your happiness it was never theirs to take",
    "Know yourself you are unique , priceless and gift to this world",
    "Be you. the world will adjust",
    "Don't Judge yourself by your past. You don't live there anymore.",
    "Dear me I will make you proud one day.",
    "Speak to yourself positively",
    "Be a priority not an option",
    "Never force someone to stay!!",
    "You are unique among all don't worry",
    "Just believe on yourself you can turn the world",
    "To change life you need to change your priority ",
    "Life is better when you laugh",

  ];
  YourselfQuotes({Key? key}) : super(key: key);

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
          title: const Text('Yourself Quotes'),
          centerTitle: true,
        ),
        backgroundColor: Colors.deepPurple.shade500,
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