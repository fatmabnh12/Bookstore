import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Computer_course/High_level.dart';
import 'package:pdf/Computer_Course.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/Computer_course/Self.dart';

class Basic_op extends StatefulWidget {
  const Basic_op({Key? key}) : super(key: key);

  @override
  _Basic_opState createState() => _Basic_opState();
}

class _Basic_opState extends State<Basic_op> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Basic operations',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>High_level()));
        },),),
      body: ListView(
        children: [
          Text('Basic Operations Of A Programming Environment',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Five basic elements or operations of programming are listed below:'
              '1)Input: Data can be input using the keyboard, touch screen, text editor, etc. For Example, to book a flight, the user can enter his login credentials and then select a departure date and return date, the number of seats, starting place and destination place, Name of Airlines, etc, from desktop, laptop or mobile device. \n'
              '2)Output: Once authenticated, and upon receiving the request to book the tickets with the mandatory inputs, a confirmation of booking for the selected date and destination will be displayed on the screen, and a copy of the tickets and invoice information is sent to the user’s registered email id and mobile number. \n'
              '3)Arithmetic: In case of flight booking, update of the number of seats booked and those seats need some mathematical calculations, further name of the passenger, no. of seats reserved, date of journey, journey start date, and starting place, destination place, etc. should be filled into the airlines server database system. \n'
              '4)Conditional: It is required to test if a condition is satisfied or not, based on the condition, the program may execute the function with parameters else it will not get executed. \n'
              '5) Looping: It is required to repeat /perform the task until the condition holds. Types of loops can be While loop, Do-while loop, For loop.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Self()));
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
