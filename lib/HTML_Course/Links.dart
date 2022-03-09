import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/HTML_Course/Elements.dart';
import 'package:pdf/HTML_Course/Tables.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
class Links extends StatefulWidget {
  const Links({Key? key}) : super(key: key);

  @override
  _LinksState createState() => _LinksState();
}

class _LinksState extends State<Links> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Links',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Tables())); },),
      ),
      body: ListView(
        children: [
          Text('The <a> Tag',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('Links are also an integral part of every web page. \n'
              ' You can add links to text or images that will enable the user to click on them in order to be directed to another file or webpage.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Text('In HTML, links are defined using the <a> tag. \n'
            'Use the href attribute to define the link of destination address:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag44.png',width: 100,height: 100,),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('To link an image to another document,\n '
                'simply nest the <img> tag inside <a> tags.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
            Divider(),
          Text('Creating Your First Link',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('In the example below, a link to Google website is defined:'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag45.png',width: 100,height: 100,),
          Divider(),
          Text('Once the code has been saved, "Learn Playing" will display as a link:'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Padding(padding: EdgeInsets.all(4)),
          Text('Clicking on "Learn Playing" redirects you to www.google.com'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          Text('The target Attribute',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('The target attribute specifies where to open the linked document. \n'
            'Giving a _blank value to your attribute will have the link open in a new window or new tab:'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag46.png',width: 100,height: 100,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Elements()));},
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
