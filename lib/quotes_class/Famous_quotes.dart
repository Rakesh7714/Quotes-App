import 'package:flutter/material.dart';
import 'package:quotes_app/cardmodel/card_model.dart';
class FamousQuotes extends StatelessWidget {
  int index= 1;
   List<String> Famousquotes = [
    "You are genius don't compare with other",
    "one lie can be a serious problem ",
    "Distance doesn't matter if the roots are the stronger ",
    "The pain that you got today will be the strength of the tomorrow",
    "God is everywhere",
    "How was ur day",
    "Is everything is fine",
    "Happiness comes automatically when you help the needy person",
    "Single lie can destroy all the truth",
    "Real love isn't easy easy love isn't real.",
    "You are  beautiful just the way you are.",
    "You are the just icon of true beauty",
    "Be happy for the this moment this moment is your life",
    "Your smile could be the reason for the someone happiness",
    "Life is short always choose happiness.",
    "Life without pain has no meaning",
    "Happy + Sad = Your life",
    "Tear holds a heavy weight of meaning",
    "It hurts when you realize you were never really as important to someone as they pretend you were."
  ];


   FamousQuotes({Key? key}) : super(key: key);

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
          title: const Text('Famous quotes'),
          centerTitle: true,
          elevation: 1,
        ),
        backgroundColor: Colors.indigo,
        body: ListView.builder(
          itemCount: Famousquotes.length
            ,
            itemBuilder:(BuildContext context , int index) {
            return CardClass(color: Colors.transparent, num: '${index+1}',
                title1:Famousquotes[index % Famousquotes.length] );
            }
        ),
      ),

    );

  }
}
