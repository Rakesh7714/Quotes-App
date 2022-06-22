import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'contact page',
      home: ContactDetails(),

    );
  }
}
class ContactDetails extends StatelessWidget {
  const ContactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0x75222947),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color(0x75222947),
          centerTitle: true,
          title: Text('Contact Us', style: GoogleFonts.lato(
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,

          )
          )
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () async {
                      var url = 'https://www.facebook.com/innerfeeling.np';
                      if( await canLaunch(url)){
                        await launch(url ,universalLinksOnly: true);
                      }else{
                        throw'There is problem in url: $url';
                      }
                    },
                      child: Icon(Icons.facebook,color: Colors.white,size: 80,)),
                  Text('Facebook',style: GoogleFonts.sail(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),),

                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    //Here is the problem occur soon start from here......................................................................
                    onTap: () async {
                      final Email email =Email(
                        body: 'Email body',
                        subject: 'Ask about us',
                       attachmentPaths: ['innerfeeling873@gmail.com'],
                        isHTML: false,
                      );
                      await FlutterEmailSender.send(Email());


                    },
                      child: Icon(Icons.alternate_email,color: Colors.white,size: 80,)),
                  Text('Email',style: GoogleFonts.sail(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),),
                  Text('(innerfeeling873@gmail.com)',style: GoogleFonts.lato(color: Colors.white),),
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: () async {
                       var url = 'https://www.instagram.com/innerfeeling873/?hl=en';
                       if(await canLaunch(url)){
                         await launch(url,universalLinksOnly: true);
                       }else{
                         throw'there is the problem in the url: $url';
                       }
                    },
                      child: Image.asset('assets/in.png',height: 70,)),
                  //Icon(Icons.contacts,color: Colors.white,size: 80,),
                  Text('Instagram',style: GoogleFonts.sail(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.only(top: 78.0),
                    child:  Text(' Just press on the Icons above',style: GoogleFonts.roboto(color: Colors.white,fontSize: 18.0),),
                  )
                ],
              )
            ],
          ),

        ],
      ),
    );
  }
}




