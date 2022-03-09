import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Flutter_course/Car.dart';
import 'package:pdf/Flutter_course/Pic.dart';

class Listv extends StatefulWidget {
  const Listv({Key? key}) : super(key: key);

  @override
  _ListvState createState() => _ListvState();
}

class _ListvState extends State<Listv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Pic()));
        },),
      ),
        body: ListView(
          children: [
            Text('Build a list',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
            Divider(),
            Text('Flutter includes a ListView widget for working with Lists, \n'
                'which is the fundamental concept of displaying data in the mobile apps.\n'
                ' The ListView is a perfect standard for displaying lists that contains only a few items.\n '
                'ListView also includes ListTitle widget, which gives more properties for the visual structure to a list of data.',
              textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            Divider(),
            Text('Code ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            Divider(),
            Image.asset('assets/images/d40.png',width: 300,height: 300,),
            Divider(),
            Text('Output',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            Divider(),
            Image.asset('assets/images/d41.png',width: 300,height: 300,),
            Divider(),
            ElevatedButton.icon(
              onPressed:(){
                Navigator.push(context,MaterialPageRoute(builder:(context)=>Car()));
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
