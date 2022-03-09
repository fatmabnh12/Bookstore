import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/CSS_Course/Background_color.dart';
import 'package:pdf/CSS_Course/Und.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';

class Border_course extends StatefulWidget {
  const Border_course({Key? key}) : super(key: key);

  @override
  _Border_courseState createState() => _Border_courseState();
}

class _Border_courseState extends State<Border_course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('The border property',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Und()));
          },)
      ),
      body: ListView(
        children: [
          Text('The border property ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The CSS border property allows you to customize the borders of HTML elements. \n'
            'In order to add a border to the element, you need to specify the size, style, and color of the border. \n'
            'The example below shows how to add a solid green border to the paragraph. \n'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The HTML',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag159.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag160.png',width: 200,height: 200,),
          Divider(),
          Text('Result ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag161.png',width: 200,height: 200,),
          Divider(),
          Text('Border Width ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The properties for the border can be set separately. \n'
              'The border-width property specifies the width of the border.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The HTML ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag162.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/tag163.png',width: 200,height: 200,),
          Divider(),
          Text('Result ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag164.png',width: 200,height: 200,),
          Divider(),
          Text('The border-style Property',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The default value of border-style is none, which defines no border. \n'
            'There are various styles supported for the border-style property: dotted, dashed, double, etc. The example below illustrates the differences between them.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The HTML :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag165.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag166.png',width: 200,height: 200,),
          Divider(),
          Text('Result ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag167.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Background_color()));},
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
