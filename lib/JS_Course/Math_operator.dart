import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pdf/JS_Course/Assign.dart';
import 'package:pdf/JS_Course/Data_type.dart';

class Math_operator extends StatefulWidget {
  const Math_operator({Key? key}) : super(key: key);

  @override
  _Math_operatorState createState() => _Math_operatorState();
}

class _Math_operatorState extends State<Math_operator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Math Operators',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Data_type()));
        },),
      ),
      body: ListView(
        children: [
          Text('Arithmetic Operators',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text(' Arithmetic operators  perform arithmetic functions on numbers (both literals and variables).',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js24.png',width: 200,height: 200,),
          Divider(),
          Text('Below you can see the addition operator (+) in action determining the sum of two numbers.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js25.png',width: 200,height: 200,),
          Divider(),
          Text('You can add as many numbers or variables together as you want or need to.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js26.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Multiplication',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Divider(),
          Image.asset('assets/images/js27.png',width: 200,height: 200,),
          Text('We use the * operator to multiply one number by the other. \n'
            'Like this:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          Image.asset('assets/images/js28.png',width: 200,height: 200,),
          Divider(),
          Text('Division',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('We use the  / operator to multiply one number by the other. \n'
              'Like this:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Image.asset('assets/images/js29.png',width: 200,height: 200,),
          Divider(),
          Text('The Modulus',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('We use the  (%) operator to multiply one number by the other. \n'
              'Like this:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js30.png',width: 200,height: 200,),
          Divider(),
          Text('Increment & Decrement',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Increment ++: \n '
            'The increment operator increases the numeric value of its operand by 1. \n'
              ' When placed before the operand, it’ll return the incremented value. \n'
              'When placed after it, it’ll return the original value and then increments the operand.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Decrement --: \n '
              'The increment operator increases the numeric value of its operand by 1. \n'
              ' When placed before the operand, it’ll return the incremented value. \n'
              'When placed after it, it’ll return the original value and then increments the operand.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Text('Some examples',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.red),),
          Divider(),
          Image.asset('assets/images/tag31.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Assign()));
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
