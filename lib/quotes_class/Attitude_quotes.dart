import 'package:flutter/material.dart';
import 'package:quotes_app/cardmodel/card_model.dart';
class AttitudeQuotes extends StatelessWidget {
  int index= 0;
  List<String> quotes = [
    "Before you judge me Make sure you are perfect",
    "Don't judge my path if you haven't walked my journey",
    "I have an attitude because i have earned it",
    "Don't study me you won't Graduate",
    "Love me or hate me i am still gonna shine",


  ];
  AttitudeQuotes({Key? key}) : super(key: key);

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
          backgroundColor: Colors.blue.shade700,
          title: const Text('Attitude Quotes'),
          centerTitle: true,
        ),
        backgroundColor: Colors.blue.shade700,
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