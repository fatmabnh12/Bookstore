import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/CSS_Course/Inline.dart';

import 'Comments.dart';
class Rules extends StatefulWidget {
  const Rules({Key? key}) : super(key: key);

  @override
  _RulesState createState() => _RulesState();
}
class _RulesState extends State<Rules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('CSS Rules and Selectors',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Inline()));
          },)
      ),
      body: ListView(
        children: [
          Text('CSS Syntax',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('CSS is composed of style rules that the browser interprets and then applies to'
              ' the corresponding elements in your document.'
            'A style rule has three parts: selector, property, and value.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
           Divider(),
          Text('For example, the headline color can be defined as:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag101.png',width: 200,height: 200,),
          Text('Where',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag102.png',width: 200,height: 200,),
          Divider(),
          Text('The selector points to the HTML element you want to style.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('The declaration block contains one or more declarations, separated by semicolons. \n'
              'Each declaration includes a property name and a value, separated by a colon.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
             Divider(),
            Text('Type Selectors',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.all(4)),
            Text('The most common and easy to understand selectors are type selectors. \n '
                'This selector targets element types on the page.',textAlign: TextAlign.center, style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
              Divider(),
              Text('For example, to target all the paragraphs on the page: \n',
               style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
              Divider(),
            Image.asset('assets/images/tag103.png',width: 200,height: 200,),
            Divider(),
            Text('id and class Selectors',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
            Padding(padding: EdgeInsets.all(4)),
            Text('id selectors allow you to style an HTML element that has an id attribute, \n '
                'regardless of their position in the document tree. Here is an example of an id '
                ' selector:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
             Padding(padding: EdgeInsets.all(4)),
            Text('The HTML',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            Divider(),
           Image.asset('assets/images/tag104.png',width: 200,height: 200,),
            Divider(),
          Text('The CSS',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag105.png',width: 200,height: 200,),
          Divider(),
          Text('Result :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag106.png',width: 200,height: 200,),
          Padding(padding: EdgeInsets.all(4)),
          Text('Class selectors work in a similar way. The major difference is that IDs can only'
              ' be applied once per page, while classes can be used as many times on a page as needed.'
            'In the example below, both paragraphs having the class "first" will be affected by the CSS:'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
           Text('The HTML :',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag107.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS :',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag108.png',width: 200,height: 200,),
          Divider(),
          Text('Descendant Selectors',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('These selectors are used to select elements that are descendants of another '
              'element. When selecting levels, you can select as many levels deep as you need to.',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Padding(padding: EdgeInsets.all(4)),
          Text('For example, to target only <em> elements in the first paragraph of the "intro" '
              'section:',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Text('The HTML :',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/tag109.png',width: 200,height: 200,),
          Text('The CSS :',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/tag110.png',width: 200,height: 200,),
          Text('As a result, only the elements selected will be affected:',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag111.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Comments()));},
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
