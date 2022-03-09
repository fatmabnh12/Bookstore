import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/SQL_Course/Join_table.dart';
import 'package:pdf/SQL_Course/Union.dart';

class Types extends StatefulWidget {
  const Types({Key? key}) : super(key: key);

  @override
  _TypesState createState() => _TypesState();
}

class _TypesState extends State<Types> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Types of Join',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Join_table()));
        },),
      ),
      body:ListView(
        children: [
          Text('Types of Join',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The following are the types of JOIN that can be used in MySQL: \n'
              '- INNER JOIN \n'
            '- LEFT JOIN \n'
            '- RIGHT JOIN ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('INNER JOIN is equivalent to JOIN. It returns rows when there is a match between the tables.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s62.png',width: 200,height: 200,),
          Divider(),
          Text('The image below demonstrates how INNER JOIN works:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s63.png',width: 200,height: 200,),
          Divider(),
          Text('LEFT JOIN',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The LEFT JOIN returns all rows from the left table, even if there are no matches in the right table.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s64.png',width: 200,height: 200,),
          Divider(),
          Text('The image below demonstrates how LEFT JOIN works:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s65.png',width: 200,height: 200,),
          Divider(),
          Text('RIGHT JOIN',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The RIGHT JOIN returns all rows from the right table, even if there are no matches in the left table.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s67.png',width: 200,height: 200,),
          Divider(),
          Text('The basic syntax of RIGHT JOIN is as follows:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s66.png',width: 200,height: 200,),
          Divider(),
          Text('Consider the same example from our previous lesson, but this time with a RIGHT JOIN:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s68.png',width: 200,height: 200,),
          Divider(),
          Text('Result',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s69.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Union()));
            },
            label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
            icon:Icon(Icons.arrow_forward_sharp,
              color: HexColor('#FD7E77'),
              size: 12,),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
