import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:pdf/Computer_course/Work.dart';
import 'package:pdf/Computer_course/Top.dart';

class Keys extends StatefulWidget {
  const Keys({Key? key}) : super(key: key);

  @override
  _KeysState createState() => _KeysState();
}

class _KeysState extends State<Keys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Computer programming keys',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Work()));
        },),),
      body: ListView(
        children: [
          Text('Basic Programming Concepts',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Developers should have essential knowledge on the following concepts to become skilled in Computer Programming,',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('#1) Algorithm: It is a set of steps or instruction statements to be followed to accomplish specific tasks. A developer can design his algorithm to achieve the desired output. ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('#2) Source code: Source code is the actual text that is used to construct the program using the language of choice. ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('#3) Compiler: Compiler is a software program that helps in converting the source code into binary code or byte code, also called machine language, that is easy for a computer to understand, and can be further executed using an interpreter to run the program.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('#4) Data Type: Data used in the applications can be of a different type, it can be a whole number (integer), floating-point (decimal point numbers), characters or objects.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('#5) Variable: Variable is a space holder for the value stored in the memory and this value can be used in the application. For Example, int age = 25, where age is a variable.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('#6) Conditionals: Knowledge of how to use a certain condition, '
              'such that a set of code should execute only if a certain condition is true. '
              'In case of a false condition, the program should exit and should not continue the code further.' ,
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('#7) Array: Array is the variable that stores elements of a similar data type. Knowledge of using an array in coding/programming will be a great benefit.' ,
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('#8) Loop: Loop is used to execute the series of code until the condition is true. For Example, in Java, loops can be used as for loop, do-while, while loop or enhanced for loop.' ,
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('#9) Function: Functions or methods are used to accomplish a task in programming, a function can take parameters and process them to get the desired output. Functions are used to reuse them whenever required at any place repeatedly.' ,
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('#10) Class: Class is like a template that contains state and behavior, which corresponding to programming is field and method. In Object-Oriented languages like Java, everything revolves around Class and Object.' ,
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Top()));
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
