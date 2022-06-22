import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'models/listViewa_model.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(
        seconds: 6,
        navigateAfterSeconds: QuotesApp(),
        title: Text('Quotes library',style: TextStyle(fontWeight:FontWeight.bold,fontSize:20,color: Colors.white),),
        image: Image.asset('assets/if.gif'),
        photoSize: 100,
        useLoader: false,
        backgroundColor: Colors.black,

      ),
    );
  }

}




