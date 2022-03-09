import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/HTML_Course/Format.dart';
import 'package:pdf/HTML_Course/Image_html.dart';

class Attribute extends StatefulWidget {
  const Attribute({Key? key}) : super(key: key);

  @override
  _AttributeState createState() => _AttributeState();
}

class _AttributeState extends State<Attribute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Attributes',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Format())); },),
      ),
      body: ListView(
        children: [
          Text('HTML Attributes',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Attributes provide additional information about an element or a tag, while \n'
              'also modifying them. Most attributes have a value; the value modifies \n'
              ' the attribute.',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag22.png',width: 100,height: 100,),
          Divider(),
          Text('In this example, the value of "center" indicates that the content within the p \n'
              'element should be aligned to the center:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag23.png',width: 200,height: 200,),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('Attributes are always specified in the start tag, and they appear in \n'
                'name="value" pairs.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
          Divider(),
          Text('Attribute Measurements',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('As an example, we can modify the horizontal line so it has a width of \n'
              '50 pixels.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('This can be done by using the width attribute:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/tag24.png',width: 100,height: 100,),
          Divider(),
          Text('An element of width can also be defined using percentages:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag25.png',width: 100,height: 100,),
          Divider(),
          Text('The Align attribute',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18),),
          Padding(padding: EdgeInsets.all(4)),
          Text('The align attribute is used to specify how the text is aligned. \n'
            'In the example below, we have a paragraph that is aligned to the center,\n'
              ' and a line that is aligned to the right.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag26.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Image_html()));},
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
