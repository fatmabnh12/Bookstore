import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/Computer_course/Top.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Computer_course/High_level.dart';
class Low_level extends StatefulWidget {
  const Low_level({Key? key}) : super(key: key);

  @override
  _Low_levelState createState() => _Low_levelState();
}

class _Low_levelState extends State<Low_level> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Computer Programming Languages',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Top()));
        },),),
      body: ListView(
        children: [
          Text('Low level language',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Hardware dependent \n'
              'Difficult to understand \n'
              'Low-level Language can be further divided into two categories, \n'
              'Machine Language: Machine dependent, difficult to modify or program, \n'
              'For Example,  every CPU has its machine language. The code written in machine language is the instructions that the processors use. \n'
              'Assembly Language: Each computer’s microprocessor that is responsible for arithmetic, logical and control activities needs instructions for accomplishing such tasks and these instructions are in assembly language. The use of assembly language is in device drivers, low-level embedded systems, and real-time systems.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>High_level()));
            },
            label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
            icon:Icon(Icons.arrow_forward_sharp,
              color: HexColor('#FD7E77'),
              size: 12,),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.white,
            ),),
        ],
      ),

    );
  }
}
