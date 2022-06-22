import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

//This is the quotes card design ----------------

class CardClass extends StatelessWidget {
  final String title1;
  final  Color color;
  final String num;
  const CardClass({Key? key,
    required this.color,
    required this.num ,
    required this.title1,
  })  : super(key: key);

  @override
  Widget build(BuildContext context) {

      return Padding(
        padding: const EdgeInsets.all(7.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
            side: const BorderSide(color: Colors.yellow, width: 3),
          ),
          color: color,
          elevation: 10.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:  [
              ListTile(
                leading: CircleAvatar(
                    radius: 18.0,
                    child: Text(num)),
                title: SelectableText(
                  title1,
                  textAlign: TextAlign.start,
                  style:GoogleFonts.lato(fontSize: 18.0,fontWeight: FontWeight.w500,color: Colors.white),),
              ),
              ButtonBarTheme(
                  data:  const ButtonBarThemeData(),
                  child: ButtonBar(
                    children: [
                      IconButton(
                        onPressed: (){
                         final data = ClipboardData(text:title1);
                         Clipboard.setData(data);
                         Fluttertoast.showToast(
                             msg: "Copied to clipboard",
                             toastLength: Toast.LENGTH_SHORT,
                             gravity: ToastGravity.CENTER,
                             backgroundColor:Colors.black,
                             textColor: Colors.white);
                        },
                        icon:Icon(Icons.copy,color: Colors.white,) ,
                      ),
                      IconButton(onPressed: (){
                        FlutterShare.share(text: title1, title: 'Quotes');
                      },
                        icon: Icon(Icons.share,color: Colors.white,),

                      )],
                  ))
            ],
          ),

        ),
      );

  }
}
