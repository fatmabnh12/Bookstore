import 'package:pdf/JS_Course/Add_method.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/JS_Course/Assoc.dart';

class JS_Arrays extends StatefulWidget {
  const JS_Arrays({Key? key}) : super(key: key);

  @override
  _JS_ArraysState createState() => _JS_ArraysState();
}

class _JS_ArraysState extends State<JS_Arrays> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arrays',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Add_method()));
        },),
      ),
      body: ListView(
        children: [
          Text('JavaScript Arrays',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Arrays store multiple values in a single variable.\n'
            'To store three course names, you need three variables.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js101.png',width: 200,height: 200,),
          Divider(),
          Text('But what if you had 500 courses? The solution is an array',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js102.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Accessing an Array',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('You refer to an array element by referring to the index number written in square brackets. \n'
            'This statement accesses the value of the first element in courses and changes the value of the second element.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js103.png',width: 200,height: 200,),
          Divider(),
          Text('Attempting to access an index outside of the array, returns the value undefined',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js104.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Assoc()));
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
