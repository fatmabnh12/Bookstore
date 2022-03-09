import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Tools/Adobe.dart';
import 'package:url_launcher/url_launcher.dart';

class Uml extends StatefulWidget {
  const Uml({Key? key}) : super(key: key);

  @override
  _UmlState createState() => _UmlState();
}

class _UmlState extends State<Uml> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StarUML',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Adobe())); },),),
         body:ListView(
           children: [
              Divider(),
             SvgPicture.asset('assets/images/star.svg',width: 50,height: 50,),
             Divider(),
             Text('StarUML',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
             Divider(),
             Text('StarUML is build as a modular and open tool. It provides frameworks for extending the functionality of the tool. It is designed to allow access to all functions of the model/meta-model and tool through COM Automation, and it provides extension of menu and option items. Also, users can create their own approaches and frameworks according to their methodologies. The tool can also be integrated with any external tools.',
               textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             Divider(),
             Text('StarUML supports the following diagram types \n'
               'Use Case Diagram \n'
               'Class Diagram \n'
               'Sequence Diagram \n'
               'Collaboration Diagram \n'
               'Statechart Diagram \n'
               'Activity Diagram \n '
               'Component Diagram \n'
               'Deployment Diagram \n'
               'Composite Structure Diagram',
               textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             Divider(),
             TextButton(
                 onPressed: (){
                   _launchUrl();
                 },
                 child: Text('Take a look here for more details',textAlign: TextAlign.center,
                   style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),)),
             Divider(),


           ],
         ) ,
    );
  }
}
_launchUrl() async{
  const url="https://staruml.io/";

  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could Not Launch Url!';
  }
}

