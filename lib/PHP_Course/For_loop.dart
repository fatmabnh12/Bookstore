import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/PHP_Course/Do_loop.dart';
import 'package:pdf/PHP_Course/Foreach_loop.dart';

class For_loop extends StatefulWidget {
  const For_loop({Key? key}) : super(key: key);

  @override
  _For_loopState createState() => _For_loopState();
}

class _For_loopState extends State<For_loop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The for Loop',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Do_loop()));
        },),
      ),
      body: ListView(
        children: [
          Text('The for loop',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The for loop is used when you know in advance how many times the script should run.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p46.png',width: 200,height: 200,),
          Divider(),
          Text('Parameters:'
            'init: Initialize the loop counter value \n'
            'test: Evaluates each time the loop is iterated, continuing if evaluates to true, and ending if it evaluates to false \n'
            'increment: Increases the loop counter value',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The example below displays the numbers from 0 to 5:.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/p47.png',width: 200,height: 200,),
          Divider(),
          Text('Result:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
           Divider(),
          Image.asset('assets/images/p48.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Foreach_loop()));
            },
            label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
            icon:Icon(Icons.arrow_forward_sharp,
              color: HexColor('#FD7E77'),
              size: 12,),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.white,
            ),)







        ],
      ),

    );
  }
}
