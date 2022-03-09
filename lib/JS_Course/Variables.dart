import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/JS_Course/Comment.dart';
import 'package:pdf/JS_Course/First.dart';
import 'package:flutter/material.dart';

class Variables extends StatefulWidget {
  const Variables({Key? key}) : super(key: key);

  @override
  _VariablesState createState() => _VariablesState();
}

class _VariablesState extends State<Variables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Variables',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>First()));
        },),
      ),
      body: ListView(
        children: [
          Text('Variables',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Variables are containers for storing data values. The value of a variable can change throughout the program.'
            'Declaring a variable is as simple as using the keyword var. Which would look like this:',textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('In this example we’ve assigned a value of 10 to the variable x. \n'
              'We’ve used the word assigned deliberately here, because in JavaScript, the equal sign (=) is actually called the "assignment" operator, rather than an "equal to" operator  \n'
            'Which means that in JavaScript, x = y will assign the value of y to x variable.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Text('Using Variables',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Divider(),
           Text('How about we assign a value to a variable and output it to the browser. We’ve got this!',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js11.png',width: 200,height: 200,),
          Divider(),
          Text('But what’s the point of variables anyway? Well, imagine your program has '
              '1000 lines of code that include the variable x. '
              'With variables you can change the value of the variables and use them multiple times in your code:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js12.png',width: 200,height: 200,),
          Divider(color:Colors.black54,),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Comment()));
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
