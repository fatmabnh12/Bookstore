import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/PHP_Course/Data_types.dart';
import 'package:pdf/PHP_Course/Variables.dart';

class Constants extends StatefulWidget {
  const Constants({Key? key}) : super(key: key);

  @override
  _ConstantsState createState() => _ConstantsState();
}

class _ConstantsState extends State<Constants> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Constants',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Variables() ));
        },),
      ),
      body: ListView(
        children: [
          Text('Constants',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Constants are similar to variables except that they cannot be changed or undefined after they`ve been defined.\n'
          'Begin the name of your constant with a letter or an underscore.\n'
          'To create a constant, use the define() function:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/p16.png',width: 200,height: 200,),
          Divider(),
          Text('Parameters: \n'
           'name: Specifies the name of the constant; \n'
            'value: Specifies the value of the constant; \n'
            'case-insensitive: Specifies whether the constant name should be case-insensitive. Default is false; \n'
            'The example below creates a constant with a case-sensitive name: \n',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/p17.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Data_types()));
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
