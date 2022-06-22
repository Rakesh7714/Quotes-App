import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'About us',
      home: PageDetail(),
    );
  }
}
class PageDetail extends StatelessWidget {
  const PageDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 1,
      ),
      backgroundColor: const Color(0x75222947),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Inner Feeling Quotes App is the hug source of quotes library App which provides you a latest Quotes related to Emotion sad Love & Inspiration and many more.This App is made on the basis of the facebook page and instagram page. '
          ,
          style:GoogleFonts.lato(color: Colors.white,fontSize: 18),),
      ),
    );
  }
}


