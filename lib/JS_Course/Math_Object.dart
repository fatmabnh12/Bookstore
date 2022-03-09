import 'package:flutter/cupertino.dart';
import 'package:pdf/JS_Course/Assoc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:pdf/JS_Course/Date_Object.dart';
import 'package:google_fonts/google_fonts.dart';
class Math_Object extends StatefulWidget {
  const Math_Object({Key? key}) : super(key: key);

  @override
  _Math_ObjectState createState() => _Math_ObjectState();
}

class _Math_ObjectState extends State<Math_Object> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Math Object',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Assoc()));
        },),
      ),
      body: ListView(
        children: [
          Text('The Math Object',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The Math object allows you to perform mathematical tasks, and includes several properties.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js106.png',width: 200,height: 200,),
          Divider(),
          Text('For example',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js107.png',width: 200,height: 200,),
          Divider(),
          Text('The Math object contains a number of methods that are used for calculations:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js108.png',width: 200,height: 200,),
          Divider(),
          Text('For example, the following will calculate the square root of a number.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js109.png',width: 200,height: 200,),
          Divider(),
          Text('Let`s create a program that will ask the user to input a number and alert its square root.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js110.png',width: 200,height: 200,),
          Divider(),
          Text('Result :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js111.png',width: 200,height: 200,),
          Divider(),
          Text('Enter a number such as 64:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js112.png',width: 200,height: 200,),
          Divider(),
          Text('Math is a handy object. You can save a lot of time using Math, instead of writing your own functions every time.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.redAccent),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Date_Object()));
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
