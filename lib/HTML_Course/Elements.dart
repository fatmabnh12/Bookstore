import 'package:flutter/cupertino.dart';
import 'package:pdf/HTML_Course/Forms.dart';
import 'package:pdf/HTML_Course/Links.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class Elements extends StatefulWidget {
  const Elements({Key? key}) : super(key: key);

  @override
  _ElementsState createState() => _ElementsState();
}

class _ElementsState extends State<Elements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inline & block elements',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Links())); },),
      ),
      body: ListView(
        children: [
          Text('Types of Elements',textAlign:TextAlign.center,style:GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('In HTML, most elements are defined as block level or inline elements.\n'
            'Block level elements start from a new line.\n'
            'For example: <h1>, <form>, <li>, <ol>, <ul>, <p>, <pre>, <table>, <div>, etc.\n'
            ,textAlign:TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Text('Inline elements are normally displayed without line breaks.\n'
            'For example: <b>, <a>, <strong>, <img>, <input>, <em>, <span>, etc.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Text('The <div> element is a block-level element that is often used as a container \n'
              'for other HTML elements.\n'
            'When used together with some CSS styling, the <div> element can be used to \n'
              'style blocks of content:'
            ,textAlign:TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag47.png',width: 200,height: 200,),
          Divider(),
          Image.asset('assets/images/tag48.png',width: 200,height: 200,),
          Text('Similarly, the <span> element is an inline element that is often used as a \n '
              'container for some text. \n'
            'When used together with CSS, the <span> element can be used to style parts \n'
              'of the text:'
            ,textAlign:TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag49.png',width: 200,height: 200,),
          Divider(),
          Image.asset('assets/images/tag50.png',width: 200,height: 200,),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('Summary \n'
              'The <div> element defines a block-level section in a document. \n'
              'The <span> element defines an inline section in a document. \n'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
             Divider(),
            Text('Other elements can be used either as block level elements or inline elements. \n'
                'This includes the following elements: \n'
              'APPLET - embedded Java applet \n'
              'IFRAME - Inline frame \n'
              'INS - inserted text \n'
              'MAP - image map \n'
              'OBJECT - embedded object \n'
              'SCRIPT - script within an HTML document \n'
            ,textAlign:TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
           Divider(),
           Text('You can insert inline elements inside block elements. For example, you can \n '
               ' have multiple <span> elements inside a <div> element.'
           ,textAlign: TextAlign.center,
         style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('Inline elements cannot contain any block level elements.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
            Divider(),
            ElevatedButton.icon(
        onPressed:(){
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Forms()));},
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
