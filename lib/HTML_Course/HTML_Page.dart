import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/HTML_Course/HTML_Struc.dart';
import 'package:pdf/HTML_Course/Blog.dart';

class HTML_Page extends StatefulWidget {
  const HTML_Page({Key? key}) : super(key: key);

  @override
  _HTML_PageState createState() => _HTML_PageState();
}

class _HTML_PageState extends State<HTML_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creating your first HTML page',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>HTML_Structure())); },),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(5)),
          Text('The HTML File',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(5)),
          Text('HTML files are text files, so you can use any text editor to create your first \n'
              ' webpage.',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Text('There are some very nice HTML editors available'
              'you can choose the one that works for you. For now let''s write our examples in VScode',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          SvgPicture.asset('assets/images/vis.svg',width: 50,height: 50,),
          Divider(),
          Text('Add the basic HTML structure to the text editor with "This is a line of text" in \n '
              'the body section.',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Image.asset('assets/images/tag4.png',width: 100,height: 100,),
          Divider(),
          Text('In our example, the file is saved as first.html',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Padding(padding:EdgeInsets.all(4)),
          Text('When the file is opened, the following result is displayed in the web browser:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag5.png',width: 200,height: 200,),
          Text('The <title> tag',textAlign:TextAlign.center,style:GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('To place a title on the tab describing the web page,\n'
              ' add a <title> element to your head section:',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Image.asset('assets/images/tag7.png',width: 200,height: 200,),
          Divider(),
          Text('This will produce the following result',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
          Padding(padding: EdgeInsets.all(4)),
          Image.asset('assets/images/tag6.png',width:200,height:200,),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('The title element is important because it describes the page and is \n '
                'used by search engines.',textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Blog()));},
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
