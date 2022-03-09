import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:pdf/HTML_Course/Colors_sh.dart';
import 'package:pdf/HTML_Course/Structure.dart';

class Model extends StatefulWidget {
  const Model({Key? key}) : super(key: key);

  @override
  _ModelState createState() => _ModelState();
}

class _ModelState extends State<Model> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Content Model',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Colors_sh())); },),
      ),
      body: ListView(
        children: [
          Text('The List of Content Models',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('In HTML, elements typically belonged in either the block level or inline'
            'content model. HTML5 introduces seven main content models.\n',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('- Metadata \n'
              '- Embedded \n'
              '- Interactive \n'
              '- Heading \n'
              '- Phrasing \n'
              '- Flow \n'
              '- Sectioning \n',textAlign: TextAlign.center,
             style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Metadata: ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text(' Content that sets up the presentation or behavior of the rest of the content. '
              'These elements are found in the head of the document.'
            'Elements: <base>, <link>, <meta>, <noscript>, <script>, <style>, <title>',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Embedded: ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Content that imports other resources into the document.'
              'Elements: <audio>, <video>, <canvas>, <iframe>, <img>, <math>, <object>, <svg>',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Interactive: ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Content specifically intended for user interaction.\n'
              'Elements: <a>, <audio>, <video>, <button>, <details>, <embed>, <iframe>, <img>, <input>, <label>, <object>, <select>, <textarea>'
              ,textAlign: TextAlign.center,style:
            GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Heading: ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Defines a section header.\n'
            'Elements: <h1>, <h2>, <h3>, <h4>, <h5>, <h6>, <hgroup>',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Flow content',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Text('Contains the majority of HTML5 elements that would be included in the normal flow of the document.',textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Sectioning content',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Text(' Defines the scope of headings, content, navigation, and footers.\n'
              'Elements: <article>, <aside>, <nav>, <section>',textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag68.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Structure()));},
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
