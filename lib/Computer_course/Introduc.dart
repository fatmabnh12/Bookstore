import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Computer_Course.dart';
import 'package:pdf/Computer_course/Work.dart';
class Introduc extends StatefulWidget {
  const Introduc({Key? key}) : super(key: key);

  @override
  _IntroducState createState() => _IntroducState();
}

class _IntroducState extends State<Introduc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Computer programming',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
      backgroundColor: Colors.white,
       leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
      Navigator.push(context,MaterialPageRoute(builder:(context)=>Computer_course()));
    },),),
      body: ListView(
        children: [
           Text('What Is Computer Programming?',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Computer Programming is a set of instructions, that helps the developer to perform certain tasks that return the desired output for the valid inputs.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Z = X + Y, where X, Y, and Z are the variables in a programming language. \n'
            'If X = 550 and Y = 450, the value of X and Y are the input values that are called literals. \n'
            'We ask the computer to calculate the value of X+Y, which results in Z, i.e. the expected output.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/c1.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Work()));
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
