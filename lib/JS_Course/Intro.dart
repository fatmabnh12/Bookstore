import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pdf/JS_Course.dart';
import 'package:pdf/JS_Course/First.dart';

class Intro extends StatefulWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  _IntroState createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Introduction',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
       backgroundColor: Colors.white,
       leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
        Navigator.push(context,MaterialPageRoute(builder:(context)=>JS_Course()));
    },),
        ),
      body: ListView(
        children: [
          Text('Welcome to JavaScript',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Do we even need to introduce JavaScript? It’s one of the most popular programming languages on the planet! \n'
            'Ever visited a website that made you think…"Hey, this website is really cool and interactive"? \n'
              ' Well, JavaScript was probably making it happen. \n '
            'So it’s just useful for websites right? Wrong! Process data, mobile and desktop apps, games, the world’s your oyster with JavaScript.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          Padding(padding: EdgeInsets.all(4)),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>First()));
            },
            label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
            icon:Icon(Icons.arrow_forward_sharp,
              color: HexColor('#FD7E77'),
              size: 12,),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.white,
            ),
          )



        ],

      ),
    );
  }
}
