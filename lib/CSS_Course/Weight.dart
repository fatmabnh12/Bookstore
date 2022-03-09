import 'package:flutter/cupertino.dart';
import 'package:pdf/CSS_Course/Color.dart';
import 'package:pdf/CSS_Course/Style.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class Weight extends StatefulWidget {
  const Weight({Key? key}) : super(key: key);

  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('font-weight',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Style()));
          },)
      ),
      body: ListView(
        children: [
          Text('The font-weight Property',style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold,),),
          Padding(padding: EdgeInsets.all(4)),
          Text('The font-weight controls the boldness or thickness of the text. The values can \n '
              'be set as normal (default size), bold, bolder, and lighter.',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The HTML',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag130.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag131.png',width: 200,height: 200,),
          Divider(),
          Text('Result',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag132.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Colorhtml()));},
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
