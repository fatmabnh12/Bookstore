import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/HTML_Course/Attribute.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:pdf/HTML_Course/Lists.dart';
class Image_html extends StatefulWidget {
  const Image_html({Key? key}) : super(key: key);

  @override
  _Image_htmlState createState() => _Image_htmlState();
}

class _Image_htmlState extends State<Image_html> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Images',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Attribute())); },),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(4)),
          Text('The <img> Tag',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The <img> tag is used to insert an image. It contains only attributes, and does \n'
              'not have a closing tag.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Padding(padding: EdgeInsets.all(4)),
          Text('The image URL (address) can be defined using the src attribute.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Padding(padding: EdgeInsets.all(4)),
          Text('The HTML image syntax looks like this:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
           Divider(),
           Image.asset('assets/images/tag27.png',width: 100,height: 100,),
          Divider(),
          Text('Image Location',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('You need to put in the image location for the src attribute that is between \n '
              'the quotation marks.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Padding(padding: EdgeInsets.all(4)),
          Text('For example, if you have a photo named "tree.jpg" in the same folder as the HTML file, \n'
              ' your code should look like this:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag28.png',width: 200,height: 200,),
          Divider(),
          Text('Image resizing',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('To define the image size, use the width and height attributes.\n'
           'The value can be specified in pixels or as a percentage:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Image.asset('assets/images/tag29.png',width: 200,height: 200,),
            Divider(),
         ElevatedButton.icon(
              onPressed:(){
       Navigator.push(context,MaterialPageRoute(builder:(context)=>Lists()));},
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
