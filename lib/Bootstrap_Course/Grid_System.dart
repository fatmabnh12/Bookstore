import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/Bootstrap_Course/Download.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Bootstrap_Course/Containers_course.dart';

class Grid_System extends StatefulWidget {
  const Grid_System({Key? key}) : super(key: key);

  @override
  _Grid_SystemState createState() => _Grid_SystemState();
}

class _Grid_SystemState extends State<Grid_System> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Grid System',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Download()));
        },),
      ),
      body: ListView(
        children: [
          Text('Bootstrap’s grid system',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('First, let’s cover what a grid system is in general,'
              ' regardless of the framework you choose to develop your amazing website on top of. \n '
              'Without using a framework, CSS would be used to implement the grid. \n'
              ' However, a framework like Bootstrap handles all of the CSS side and provides us with easy-to-use classes. \n '
              'A responsive grid system is composed of two main elements:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),

          Divider(),
          Image.asset('assets/images/b1.png',width: 200,height: 200,),
          Divider(),
          Text('Bootstrap’s grid system uses a series of containers, rows, and columns to layout and align content. \n '
              'It’s built with flexbox and is fully responsive. \n'
              'Below is an example and an in-depth look at how the grid comes together.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),

          Divider(),
          Image.asset('assets/images/b2.png',width: 300,height: 300,),
          Divider(),
          Text('Grid options',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('While Bootstrap uses ems or rems for defining most sizes, pxs are used for grid breakpoints and container widths. \n '
              'This is because the viewport width is in pixels and does not change with the font size.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/b3.png',width: 400,height: 400,),
          Divider(),
          Text('Auto-layout columns',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Utilize breakpoint-specific column classes for easy column sizing without an explicit numbered class like .col-sm-6.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Equal-Width',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('For example, here are two grid layouts that apply to every device and viewport, from xs to xl. \n'
              'Add any number of unit-less classes for each breakpoint you need and every column will be the same width.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/b4.png',width: 400,height: 400,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Containers_course()));
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
