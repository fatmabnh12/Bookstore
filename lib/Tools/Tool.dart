import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Tools/Use.dart';
import 'package:pdf/Tools/quixy.dart';

class Tool extends StatefulWidget {
  const Tool({Key? key}) : super(key: key);

  @override
  _ToolState createState() => _ToolState();
}

class _ToolState extends State<Tool> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Use of software development tools',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Use())); },),),

      body: ListView(
        children: [
          Text('Why do we use such tools ?',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Software tools are used to accomplish and investigate the business processes, document the development process of the software and optimize all the processes. \n'
              'By using these tools in the software development process, the outcome of the projects will be more productive. \n'
              'Using the development tools, a developer can easily maintain the workflow of the project.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Quixy()));
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
