import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Bootstrap_Course/Columns.dart';
import 'package:pdf/Bootstrap_Course/Headings.dart';

class Nav_bar extends StatefulWidget {
  const Nav_bar({Key? key}) : super(key: key);

  @override
  _Nav_barState createState() => _Nav_barState();
}

class _Nav_barState extends State<Nav_bar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Bars',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Columns()));
        },),
      ),
      body: ListView(
        children: [
          Text('Navigation Bars',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('With Bootstrap, a navigation bar can extend or collapse, depending on the screen size.\n'
            'A standard navigation bar is created with <nav class="navbar navbar-default">.\n'
            'The following example shows how to add a navigation bar to the top of the page:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/b13.png',width: 200,height: 200,),
          Divider(),
          Text('Example :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/b14.png',width: 200,height: 200,),
          Divider(),
          Text('Navigation Bar with dropdown',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Navigation bars can also hold dropdown menus. \n'
              'The following example adds a dropdown menu for the "Page 1" button:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/b15.png',width: 200,height: 200,),
          Divider(),
          Image.asset('assets/images/b16.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Headings()));
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
