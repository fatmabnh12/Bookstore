import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Android_Course.dart';
import 'package:pdf/Android_Course/Arch.dart';


class Introd extends StatefulWidget {
  const Introd({Key? key}) : super(key: key);

  @override
  _IntrodState createState() => _IntrodState();
}

class _IntrodState extends State<Introd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('What is Android ?',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,
            color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Android_Course()));
        },),
      ),
      body: ListView(
        children: [
          Text('Introduction',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          SvgPicture.asset('assets/images/android.svg',width: 100,height: 100,),
          Text('Android is a software package and linux based operating system for mobile devices such as tablet computers and smartphones. \n'
              'It is developed by Google and later the OHA (Open Handset Alliance). Java language is mainly used to write the android code even though other languages can be used.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Features of Android',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('After learning what is android, let`s see the features of android. The important features of android are given below: \n'
              '1) It is open-source. \n'
           '2) Anyone can customize the Android Platform. \n'
           '3) There are a lot of mobile applications that can be chosen by the consumer.\n'
          '4) It provides many interesting features like weather details, opening screen, live RSS (Really Simple Syndication) feeds etc.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Arch()));
            },
            label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
            icon:Icon(Icons.arrow_forward_sharp,
              color: HexColor('#FD7E77'),
              size: 12,),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.white,
            ),
          ),




        ],
      ),

    );
  }
}
