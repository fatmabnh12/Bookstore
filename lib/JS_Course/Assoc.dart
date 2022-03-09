import 'package:flutter/cupertino.dart';
import 'package:pdf/JS_Course/JS_Arrays.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/JS_Course/Math_Object.dart';

class Assoc extends StatefulWidget {
  const Assoc({Key? key}) : super(key: key);

  @override
  _AssocState createState() => _AssocState();
}

class _AssocState extends State<Assoc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Arrays',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>JS_Arrays()));
        },),
      ),
      body: ListView(
        children: [
          Text('Associative Arrays',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('While many programming languages support arrays with named indexes (text instead of numbers), '
              'called associative arrays JavaScript does not.\n'
            'However, you still can use the named array syntax, which will produce an object.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Example :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/js105.png',width: 200,height: 200,),
          Divider(),
          Text('Now, person is treated as an object, instead of being an array.'
            'The named indexes "name" and "age" become properties of the person object.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Math_Object()));
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
