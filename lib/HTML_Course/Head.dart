import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/HTML_Course/Blog.dart';
import 'package:pdf/HTML_Course/Paragraph.dart';
import 'package:pdf/Html_Course.dart';

class Head extends StatefulWidget {
  const Head({Key? key}) : super(key: key);

  @override
  _HeadState createState() => _HeadState();
}

class _HeadState extends State<Head> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Headings,lines,comments',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Blog())); },),
      ),
      body: ListView(
        children: [
          Text('HTML Headings',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold)),
          Divider(),
          Text('HTML includes six levels of headings, which are ranked according to importance. \n'
            'These are <h1>, <h2>, <h3>, <h4>, <h5>, and <h6>.',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The following code defines all of the headings : \n',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/tag9.png',width: 200,height: 200,),
          Divider(),
          Text('Result:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/tag10.png',width: 200,height: 200,),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('It is not recommended that you use headings just to make the text \n'
                ' big or bold, because search engines use headings to index the web \n'
                'page structure and content.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
            Divider(),
           Text('Horizontal lines',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Padding(padding: EdgeInsets.all(4)),
          Text('To create a horizontal line, use the <hr> tag.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Image.asset('assets/images/tag11.png',width: 200,height: 200,),
          Divider(),
          Text('Result: ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/tag12.png',width: 200,height: 200,),
          Divider(),
          Text('Comments',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('The browser does not display comments, but they help document the HTML \n'
              'and add descriptions, reminders, and other notes.',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Image.asset('assets/images/tag13.png',width: 100,height: 100,),
          Divider(),
          Text('Example',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/tag14.png',width: 200,height: 200,),
          Divider(),
          Text('Result',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/tag15.png',width: 200,height: 200,),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('As you can see, the comment is not displayed in the browser.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
             Padding(padding: EdgeInsets.all(4)),
            ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Paragraph()));},
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
