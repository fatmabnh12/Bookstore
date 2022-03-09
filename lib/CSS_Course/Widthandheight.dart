import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/CSS_Course/Border_course.dart';
import 'package:google_fonts/google_fonts.dart';

class Widthandheight extends StatefulWidget {
  const Widthandheight({Key? key}) : super(key: key);

  @override
  _WidthandheightState createState() => _WidthandheightState();
}

class _WidthandheightState extends State<Widthandheight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Width & Height',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Border_course()));
          },)
      ),
      body: ListView(
        children: [
          Text('CSS Width and Height',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('To style a <div> element to have a total width and height of 100px:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Text('The HTML :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag168.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag169.png',width: 200,height: 200,),
          Divider(),
          Text('Result :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag170.png',width: 200,height: 200,),
          Divider(),
          Text('Width and Height Measurement',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The width and height of an element can be also assigned using percents. \n'
            'In the example below the width of an element is assigned in percentages, the height is in pixels.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The HTML :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag171.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag172.png',width: 200,height: 200,),
          Divider(),
          Text('Result :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag173.png',width: 200,height: 200,),
          Divider(),
          Text('The Minimum and Maximum Sizes',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('To set the minimum and maximum height and width of an element, you can use the following properties: \n'
            'min-width - the minimum width of an element \n'
            'min-height - the minimum height of an element \n'
            'max-width - the maximum width of an element \n'
            'max-height - the maximum height of an element \n '
            'In the example below, we set the minimum height and maximum width of different paragraphs to 100px.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The HTML :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag174.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag175.png',width: 200,height: 200,),
          Divider(),
          Text('Result:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag176.png',width: 200,height: 200,),
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
