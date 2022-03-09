import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/JS_Course/Comment.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/JS_Course/Math_operator.dart';

class Data_type extends StatefulWidget {
  const Data_type({Key? key}) : super(key: key);

  @override
  _Data_typeState createState() => _Data_typeState();
}

class _Data_typeState extends State<Data_type> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data types',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Comment()));
        },),
      ),
      body: ListView(
        children: [
          Text('Data Types',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The term data type refers to the types of values a program can work with. \n'
              'The limit with JavaScript variables, which can hold a bunch of different data types–numbers, strings, arrays, you name it.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Numbers can be written with or without decimals. Like this:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js16.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Image.asset('assets/images/js17.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Strings',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('A string can be any text wrapped in quotes. Single or double quotes, \n'
              ' it doesn’t matter, so long as you’re consistent with them. Like this:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js18.png',width: 200,height: 200,),
          Divider(),
          Text('You can use quotes inside a string, as long as they don`t match the quotes enclosing the string itself.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js19.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('the backslash escape character. \n '
              'He comes to the rescue when you need to put quotes within strings (and a bunch of other situations) by transforming special characters into string characters.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Image.asset('assets/images/js20.png',width: 200,height: 200,),
          Divider(),
          Text('Result',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/js21.png',width: 200,height: 200,),
          Divider(),
          Text('But the escape character (\) isn’t just for quotes, \n'
              'it works when you need to put other special characters inside strings too!',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/js22.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Booleans',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('You need a data type that can only have one of two possible values,\n '
              'like Yes/No, on/off or true/false. Let’s look at an example:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/js23.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Math_operator()));
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
