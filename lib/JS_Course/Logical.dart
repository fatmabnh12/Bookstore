import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/JS_Course/Comp.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/JS_Course/String_op.dart';


class Logical extends StatefulWidget {
  const Logical({Key? key}) : super(key: key);

  @override
  _LogicalState createState() => _LogicalState();
}

class _LogicalState extends State<Logical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logical Operators',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Comp()));
        },),
      ),
      body: ListView(
        children: [
          Text('Logical Operators',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Logical Operators, also known as Boolean Operators, evaluate an expression and return true or false.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Check out the table below to see more details on the logical operators (AND, OR, NOT).',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js35.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Let `s take a look at an example. Here we’ve connected two Boolean expressions with the AND operator.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Image.asset('assets/images/js36.png',width: 200,height: 200,),
          Text('For this expression to be true, both conditions need to be true. \n'
              '- The first condition determines whether 4 is greater than 2, which is true. \n'
          '- The second condition determines whether 10 is less than 15, which is also true.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Text('Conditional (Ternary) Operators',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Conditional, or Ternary, operators assign a value to a variable, based on some condition.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('This is what the syntax would look like:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js37.png',width: 200,height: 200,),
          Divider(),
          Text('And here is  an example',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js38.png',width: 200,height: 200,),
          Text('If the variable age is a value below 18, the value of the variable isAdult will be "Too young". '
              'Otherwise the value of isAdult will be "Old enough".',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.redAccent),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>String_op()));
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
