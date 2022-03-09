import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/CSS_Course/Shadow.dart';
import 'package:pdf/CSS_Course/Vertc.dart';

class Dec extends StatefulWidget {
  const Dec({Key? key}) : super(key: key);

  @override
  _DecState createState() => _DecState();
}

class _DecState extends State<Dec> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Text-decoration',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Vertc()));
          },)
      ),
      body: ListView(
        children: [
          Text('Text-decoration',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Divider(),
          Text('The text-decoration property specifies how the text will be decorated. \n'
              'Commonly used values are: \n'
               ' none - The default value, this defines a normal text \n'
              'inherit - Inherits this property from its parent element \n'
              'overline - Draws a horizontal line above the text \n'
              'underline - Draws a horizontal line below the text \n'
              'line-through - draws a horizontal line through the text (substitutes the HTML <s> tag) \n'
      'The example below demonstrates the difference between each value.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The HTML :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag148.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag149.png',width: 200,height: 200,),
          Divider(),
          Text('Result:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag150.png',width: 200,height: 200,),
          Divider(),
          Text('Another value of text-decoration property is blink which makes the text blink.'
          ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('CSS syntax looks like this:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag151.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Shadow()));},
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
