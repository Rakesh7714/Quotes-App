import 'package:flutter/material.dart';
import 'package:quotes_app/cardmodel/card_model.dart';
class InspirationalQuotes extends StatelessWidget {
  //int index= 0;
  final List<String> Inspirationalquotes = [
    "Believe in yourself. ",
    "Stop telling people more than they need to know",
    "Let the pain teach you how to be strong ",
    "Truth like the sun will always come out",
    "You become what you believe",
    "You need a break from people , not life",
    "Nothing teaches us better than our own experiences",
    "The truth hurts, but those lies heal.",
    "Don't limit your challenge challenge your limits",
    "What is not started today is never finished tomorrow",
    "Not all the promises are fake",
    "Mistakes are sometimes the best memories",
    "Trust the timing of your life",
    "You will never have this day again so make it count",
    "It's going to be hard but the hard doesn't mean impossible",
    "I am me that what is my power",
    "Great things never come from comfort zone",
    "When it hurts observe that the life is trying to teach you somethings",
    "It doesn't matter how slowly you go as long as you don't stop.",
    "Don't wait to be rich to be happy happiness is free",


  ];


  InspirationalQuotes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightBlue,

        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.of(context).pop();
            },),
          //backgroundColor: Colors.black26,
          title: const Text('Inspirational Quotes'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: Inspirationalquotes.length
            ,
            itemBuilder:(BuildContext context , int index) {
              return CardClass(color: Colors.lightBlue, num: '${index+1}',
                  title1:Inspirationalquotes[index % Inspirationalquotes.length] );
            }
        ),
      ),

    );

  }
}