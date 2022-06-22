import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quotes_app/PageNavigation/AboutPage.dart';
import 'package:quotes_app/PageNavigation/contactPage.dart';
import 'package:quotes_app/cardmodel/card_model.dart';
import 'package:quotes_app/quotes_class/Attitude_quotes.dart';
import 'package:quotes_app/quotes_class/Yourself_quotes.dart';
import 'package:quotes_app/quotes_class/emotional_quotes.dart';
import 'package:quotes_app/quotes_class/facebookquotes.dart';
import 'package:quotes_app/quotes_class/goodmorning_quotes.dart';
import 'package:quotes_app/quotes_class/inspiration_quotes.dart';
import 'package:quotes_app/quotes_class/life_quotes.dart';
import 'package:quotes_app/quotes_class/love_quotes.dart';
import 'package:quotes_app/quotes_class/motivational_quotes.dart';
import 'package:quotes_app/quotes_class/positive_quotes.dart';
import 'package:quotes_app/quotes_class/sad_quotes.dart';
import 'package:quotes_app/quotes_class/short_quotes.dart';
import 'package:url_launcher/url_launcher.dart';
import '../quotes_class/Famous_quotes.dart';
class QuotesApp extends StatefulWidget {

  const QuotesApp({Key? key}) : super(key: key);

  @override
  State<QuotesApp> createState() => _QuotesAppState();
}

class _QuotesAppState extends State<QuotesApp> {
  DateTime timeBackPressed =DateTime.now();
  @override
  Widget build(BuildContext context) {

    return WillPopScope(
      onWillPop: () async {
     final difference = DateTime.now().difference(timeBackPressed);
     final isExitWarning = difference >= Duration(seconds: 2);
     timeBackPressed = DateTime.now();
     if(isExitWarning){
       final message = 'press back again to exit';
       Fluttertoast.showToast(msg: message , fontSize: 18,backgroundColor: Colors.purpleAccent);
       return false;
     }else {
       Fluttertoast.cancel();
       return true;
     }
      },
      child: Scaffold(

        //Here we are making the drawer for the app.....................

        drawer: ClipRRect(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0)
          ),
          child: Drawer(
            backgroundColor: Colors.white,
            child: ListView(
              children:  [
                const UserAccountsDrawerHeader(accountName: Text('Inner feeling'),
                  accountEmail:Text('innerfeeling873@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Text('IF',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),

                ),

                //Here is the tiles for the drawer............................

                ListTile(
                  leading: const Icon(Icons.home),
                  title:const Text('Home'),
                  onTap: (){
                    Navigator.pop(context);
                  },

                ),
                 const Divider(
                   color: Colors.blueGrey,
                 ),
                 ListTile(
                  leading: Icon(Icons.facebook),
                  title:GestureDetector(
                    onTap: () async {
                      var url = 'https://www.facebook.com/innerfeeling.np';
                      if(await canLaunch(url)) {
                        await launch(url,universalLinksOnly: true);
                      }else{
                        throw'There was problem to open url :$url';
                      }

                    },
                      child: const Text('Facebook')),

                ),
                const Divider(
                  color: Colors.blueGrey,
                ),
                 InkWell(
                   onTap:()=>FlutterShare.share(linkUrl:'Follow this page https://www.facebook.com/innerfeeling.np',title: 'visit this page'),
                   child: const ListTile(
                    leading: Icon(Icons.share),
                    title:Text('instagram page'),


                ),


                 ),
                const Divider(
                  color: Colors.blueGrey,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactPage()));
                  },
                  child: const ListTile(
                    leading: Icon(Icons.contacts),
                    title:Text('Contacts'),

                  ),

                ),
                const Divider(
                  color: Colors.blueGrey,
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>PageDetail()));
                  },
                  child: const ListTile(
                    leading: Icon(Icons.group),
                    title:Text('About us'),
                  ),
                ),
                const Divider(
                  color: Colors.blueGrey,
                ),


              ],
            ),

          ),
        ),
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset('assets/if.png',fit: BoxFit.contain,height: 32.0,),
              Container(
                padding:  EdgeInsets.all(8.0),
                child:  Text('Inner feeling',style: GoogleFonts.fahkwang(fontWeight: FontWeight.bold,fontSize: 21),),

              ),

            ],
          ),
          //actions:  const [Icon(Icons.dot],

        ),

        //Adding the cards for the different quotes field

        body: ListView(
          padding: EdgeInsets.all(8.0),
          children:  [
            //Here we are implementing the search button ----------------
            // TextField(
            //   cursorColor: Colors.white,
            //   decoration: InputDecoration(
            //     icon: Icon(Icons.search,color: Colors.white,),
            //     border: OutlineInputBorder(
            //
            //     ),
            //     hintText: 'Search quotes'
            //
            //   ),
            // ),
             Card(

              color: Colors.amberAccent,
              child: ListTile(
                title: Center(child: Text('All Quotes ',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold,),)),
              ),

            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(color: Colors.blue, width: 3),
              ),
              color: Colors.lightBlueAccent,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  FamousQuotes()));
                },
                child:ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Famous Status',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing:
                  Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
            ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15.0),
                 side: const BorderSide(color: Colors.yellow, width: 3),
               ),
              color: Colors.red,
              child: GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  LifeQuotes()));
                },
                child: const ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Life',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
            ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15.0),
                 side: const BorderSide(color: Colors.yellow, width: 3),
               ),
              color: Colors.blueAccent,
              shadowColor: Colors.white,
              child: GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  MotivationalQuotes()));

                },
                child: const ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Motivational ',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(color: Colors.yellow, width: 3),
              ),
              color: Colors.lightGreen,
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> EmotionalQuotes()));

                  },
                child: const ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Emotional',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing:  Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(color: Colors.yellow, width: 3),
              ),
              color: Colors.deepOrangeAccent,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LoveQuotes()));

                },
                child: const ListTile(
                  leading: Icon(Icons.monitor_heart),
                  title: Text('Love',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
            ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15.0),
                 side: const BorderSide(color: Colors.yellow, width: 3),
               ),
              color: Colors.purpleAccent,
              child: GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  AttitudeQuotes()));

                },
                child: const ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Attitude',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing:  Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
            ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15.0),
                 side: const BorderSide(color: Colors.yellow, width: 3),
               ),
              color: Colors.indigoAccent,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  SadQuotes()));

                },
                child: const ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Sad',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing:  Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
            ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15.0),
                 side: const BorderSide(color: Colors.yellow, width: 3),
               ),
              color: Colors.deepOrange,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  YourselfQuotes()));

                },
                child: const ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Yourself',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing:  Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
            ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15.0),
                 side: const BorderSide(color: Colors.yellow, width: 3),
               ),
              color: Colors.grey,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  InspirationalQuotes()));

                },
                child: const ListTile(
                  leading: Icon(Icons.diamond),
                  title: Text('Inspiration',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing:  Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
            ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15.0),
                 side: const BorderSide(color: Colors.yellow, width: 3),
               ),
              color: Colors.green,
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  PositiveQuotes()));

                },
                child: const ListTile(
                  leading: Icon(Icons.lightbulb),
                  title: Text('Positive',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing:  Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
            ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(15.0),
                 side: const BorderSide(color: Colors.yellow, width: 3),
               ),
              color: Colors.lightGreen,
              child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>  ShortQuotes()));

                  },
                child: const ListTile(
                  leading: Icon(Icons.short_text),
                  title: Text('ShortQuotes',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing:  Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(color: Colors.yellow, width: 3),
              ),
              color: Colors.red,
              child: GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  FacebookQuotes()));
                },
                child: const ListTile(
                  leading: Icon(Icons.facebook,color: Colors.white,),
                  title: Text('Status for Facebook',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
                side: const BorderSide(color: Colors.yellow, width: 3),
              ),
              color: Colors.purpleAccent,
              child: GestureDetector(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  MorningQuotes()));
                },
                child: const ListTile(
                  leading: Icon(Icons.wb_sunny,color: Colors.white,),
                  title: Text('Good Morning Message',style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                  trailing: Icon(Icons.arrow_forward_ios_sharp),
                ),
              ),
            ),

          ],
        ),
        // floatingActionButton: FloatingActionButton(
        //   onPressed: (){},
        //   child: Icon(Icons.image),
        //   backgroundColor: Colors.blueGrey,
        // )
      ),
    );
  }
}