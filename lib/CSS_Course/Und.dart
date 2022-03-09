import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/CSS_Course/Border_course.dart';
import 'package:pdf/CSS_Course/Box_model.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Und extends StatefulWidget {
  const Und({Key? key}) : super(key: key);

  @override
  _UndState createState() => _UndState();
}

class _UndState extends State<Und> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('More on Box models',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Box_model()));
          },)
      ),
      body: ListView(
        children: [
          Text('More on Box models',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Every element of the webpage is a box. \n'
            'CSS uses the box model to determine how big the boxes are and how to place them.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Text('Total Width of an Element',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('When working with boxes, it is important to understand how the total width of an element is calculated.\n'
            'For example, the total width of the box with paddings will be the sum of width plus padding left and padding right',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag156.png',width: 200,height: 200,),
          Divider(),
          Text('Here is another box with margins, border, and paddings. \n'
            'The total width is the sum of left and right margins, left and right borders, left and right paddings, and the actual width of the content.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag157.png',width: 200,height: 200,),
          Divider(),
          Text('Total Height of an Element',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The total height of an element is calculated the same way as the width. \n'
            'The example below is the same box from the previous lesson with padding, border and margin.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          Image.asset('assets/images/tag158.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Border_course()));},
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
