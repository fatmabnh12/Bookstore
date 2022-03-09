import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/PHP_Course/Foreach_loop.dart';
import 'package:pdf/PHP_Course/Include.dart';

class Switch_stat extends StatefulWidget {
  const Switch_stat({Key? key}) : super(key: key);

  @override
  _Switch_statState createState() => _Switch_statState();
}

class _Switch_statState extends State<Switch_stat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The switch Statement',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Foreach_loop()));
        },),
      ),
      body: ListView(
        children: [
          Text('The switch Statement',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The switch statement is an alternative to the if-elseif-else statement. \n'
            'Use the switch statement to select one of a number of blocks of code to be executed.',
          textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p51.png',width: 200,height: 200,),
          Divider(),
          Text('First, our single expression, n (most often a variable), is evaluated once. \n'
              'Next, the value of the expression is compared with the value of each case in the structure. \n'
              'If there is a match, the block of code associated with that case is executed.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Consider the following example, which displays the appropriate message for each day.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Include()));
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
