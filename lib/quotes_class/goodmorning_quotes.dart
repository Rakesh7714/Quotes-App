import 'package:flutter/material.dart';
import 'package:quotes_app/cardmodel/card_model.dart';
class MorningQuotes extends StatelessWidget {
  int index= 0;
   List<String> quotes = [
    "Wake up its the new day and the new thing to do",
    "Everytime as the sun bright same we must bright",
     "Make today another wonderful day",
     "Today will be the great day so wakeup and smile",
     "The best is yet to be",
     "Move forward good things are up ahead",
     "Start the new day with the smile",
     "A perfect day when the soul smile",
     "Be happy in the every moments",
     "Grow through what you go through",
     "Good Morning :- Have A Nice Day",
     "Opportunities are like sunrise if you wait too long you will miss it",
     "Silence isn't empty it is full of answer",


  ];
  MorningQuotes({Key? key}) : super(key: key);

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
          title: const Text('Morning Quotes'),
          centerTitle: true,
        ),
        backgroundColor: Colors.deepOrangeAccent,
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