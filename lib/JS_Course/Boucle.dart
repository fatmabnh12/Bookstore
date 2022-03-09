import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/JS_Course/Switch_case.dart';
import 'package:pdf/JS_Course/While_loop.dart';

class Boucle extends StatefulWidget {
  const Boucle({Key? key}) : super(key: key);

  @override
  _BoucleState createState() => _BoucleState();
}

class _BoucleState extends State<Boucle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The for Loop',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Switch_case()));
        },),
      ),
      body: ListView(
        children: [
          Text('Loops',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Loops can execute a block of code a number of times. They’re handy when you want to run the same code repeatedly,adding a different value each time.\n'
              'JavaScript has three types of loops: for, while, and do while.\n'
            'We’ll start here with the classic for loop.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Here is the syntax',
            style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js49.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('And here’s what happens when it runs: \n'
              'Statement 1 is executed before the loop (the code block) starts. \n'
        ' Statement 2 defines the condition for running the loop (the code block).\n'
         'Statement 3 is executed each time after the loop (the code block) has been executed.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(color: Colors.black54,),
          Text('The for loop',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Now we  got the theory, let`s look at a specific example. \n'
          'This example creates a for loop that prints numbers 1 through 5:.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js50.png',width: 200,height: 200,),
          Divider(),
          Text('In this example, Statement 1 sets a variable before the loop starts (var i = 1).\n'
              'Statement 2 defines the condition for the loop to run (it must be less than or equal to 5). \n'
          'Statement 3 increases a value (i++) each time the code block in the loop has been executed.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Result',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js51.png',width: 200,height: 200,),
          Divider(),
          Text('You can also initiate more than one value in statement 1, using commas to separate them.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(color: Colors.black54,),
          Image.asset('assets/images/js52.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>While_loop()));
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
