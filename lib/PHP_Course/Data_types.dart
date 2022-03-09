import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/PHP_Course/Constants.dart';
import 'package:pdf/PHP_Course/Operator.dart';

class Data_types extends StatefulWidget {
  const Data_types({Key? key}) : super(key: key);

  @override
  _Data_typesState createState() => _Data_typesState();
}

class _Data_typesState extends State<Data_types> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data types',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Constants() ));
        },),
      ),
      body: ListView(
        children: [
          Text('Data types',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Variables can store a variety of data types.\n'
            'Data types supported by PHP: String, Integer, Float, Boolean, Array, Object, NULL, Resource.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('PHP String',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('A string is a sequence of characters, like "Hello world!"  \n'
            'A string can be any text within a set of single or double quotes '
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p18.png',width: 200,height: 200,),
          Divider(),
          Text('PHP Integer',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Divider(),
          Text('An integer is a whole number (without decimals) that must fit the following criteria: \n'
              '- It cannot contain commas or blanks'
             '- It must not have a decimal point'
            '- It can be either positive or negative'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p19.png',width: 200,height: 200,),
          Divider(),
          Text('PHP Float',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Divider(),
          Text('A float, or floating point number, is a number that includes a decimal point.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          Image.asset('assets/images/p20.png',width: 200,height: 200,),
          Divider(),
          Text('PHP Boolean',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('A Boolean represents two possible states: TRUE or FALSE.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p21.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Operator()));
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
