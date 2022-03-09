import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/HTML_Course/Skills.dart';

import 'Links.dart';

class Tables extends StatefulWidget {
  const Tables({Key? key}) : super(key: key);

  @override
  _TablesState createState() => _TablesState();
}

class _TablesState extends State<Tables> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tables',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Skills())); },),
      ),
      body: ListView(
        children:[
        Text('Creating a table ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('Tables are defined by using the <table> tag.\n'
              'Tables are divided into table rows with the <tr> tag.\n'
              'Table rows are divided into table columns (table data) with the <td> tag.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Padding(padding: EdgeInsets.all(4)),
          Text('Here is an example of a table with one row and three columns',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag35.png',width: 100,height: 100,),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('Table data tags <td> act as data containers within the table. \n'
              'They can contain all sorts of HTML elements, such as text, images, lists, other tables, and so on.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
              Divider(),
            Text('The border and colspan Attributes',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
             Padding(padding: EdgeInsets.all(4)),
          Text('A border can be added using the border attribute:',style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag36.png',width: 100,height: 100,),
          Divider(),
          Text('A table cell can span two or more columns:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag37.png',width: 200,height: 200,),
          Divider(),
          Text('Result',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag38.png',width: 200,height: 200,),
          Text('The align and bgcolor Attributes',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('To change your table position, use the align attribute inside your table tag:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Image.asset('assets/images/tag41.png',width: 200,height: 200,),
          Padding(padding: EdgeInsets.all(4)),
          Text('Now specify a background color of red for a table cell.\n'
              ' To do that, just use the bgcolor attribute.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag42.png',width: 200,height: 200,),
          Divider(),
          Text('Result',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag43.png',width: 200,height: 200,),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('In the case of styling elements, CSS is more effective than HTML. \n '
                'Try our "CSS" course to learn more about CSS and styles.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
             Divider(),
            ElevatedButton.icon(
          onPressed:(){
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Links()));},
          label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
          icon:Icon(Icons.arrow_forward_sharp,
            color: HexColor('#FD7E77'),
            size: 12,),
          style: ElevatedButton.styleFrom(
            shape: StadiumBorder(),
            primary: Colors.white,
          ),
            )



































        ]
      ),

    );
  }
}
