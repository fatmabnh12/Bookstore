import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/CSS_Course/Family.dart';
import 'package:pdf/CSS_Course/Rules.dart';

class Comments extends StatefulWidget {
  const Comments({Key? key}) : super(key: key);

  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Comments',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Rules()));
          },)
      ),
       body: ListView(
         children: [
           Text('Comments',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Padding(padding: EdgeInsets.all(4)),
           Text('Comments are used to explain your code, and may help you when you edit '
               'the source code later. Comments are ignored by browsers.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight:FontWeight.w600 ),),
           Divider(),
           Text('A CSS comment look like this:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
           Divider(),
           Image.asset('assets/images/tag112.png',width: 200,height: 200,),
           Divider(),
           Text('Example',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
           Divider(),
           Image.asset('assets/images/tag113.png',width: 200,height: 200,),
           Divider(),
           Text('The comment does not appear in the browser:',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
           Divider(),
           Image.asset('assets/images/tag114.png',width: 200,height: 200,),
           Divider(),
           ElevatedButton.icon(
             onPressed:(){
               Navigator.push(context,MaterialPageRoute(builder:(context)=>Family()));},
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
