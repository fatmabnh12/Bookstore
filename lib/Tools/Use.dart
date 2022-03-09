import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pdf/Tools/Tool.dart';
import 'package:pdf/Tools_Course.dart';

class Use extends StatefulWidget {
  const Use({Key? key}) : super(key: key);

  @override
  _UseState createState() => _UseState();
}

class _UseState extends State<Use> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Introduction',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
    backgroundColor: Colors.white,
    leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
    Navigator.push(context,MaterialPageRoute(builder:(context)=>Tools_Course())); },),),
      body:ListView(
        children: [
          Text('Introduction',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('A computer program that is used by the software developers for creating, editing, maintaining, supporting and debugging other applications, frameworks and programs – is termed as a Software Development Tool or a Software Programming Tool. \n'
            'Development tools can be of many forms like linkers, compilers, code editors, GUI designer, assemblers, debugger, performance analysis tools etc. There are certain factors to be considered while selecting the corresponding development tool, based on the type of the project.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          SvgPicture.asset('assets/images/website.svg',width: 100,height: 100,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Tool()));
            },
            label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
            icon:Icon(Icons.arrow_forward_sharp,
              color: HexColor('#FD7E77'),
              size: 12,),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.white,
            ),),


        ],
      ),


    );
  }
}
