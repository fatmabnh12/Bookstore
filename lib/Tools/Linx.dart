import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Tools/Embold.dart';
import 'package:pdf/Tools/quixy.dart';
import 'package:url_launcher/url_launcher.dart';

class Linx extends StatefulWidget {
  const Linx({Key? key}) : super(key: key);

  @override
  _LinxState createState() => _LinxState();
}

class _LinxState extends State<Linx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linx',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Quixy())); },),),
      body: ListView(
        children: [
          Image.asset('assets/images/linx.png',width: 100,height: 100,),
           Divider(),
          Text('Linx',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Linx is low code tool to build and automate backend applications and web services. The tool accelerates the design, development and automation of custom business processes, including easy integration of applications, systems and databases.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          TextButton(
              onPressed: (){
                _launchUrl();
              },
              child: Text('Visit Linx Website',textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),)),
          Divider(),
          Text('Easy-to-use, drag-and-drop IDE and Server.\n'
              'Over 100 pre-built plugins programming functions and services for rapid development. \n'
              'One-click deployment to any local or cloud server. \n'
              'Input and outputs include nearly any SQL & NoSQL databases, numerous file formats (text and binary) or REST and SOAP Web services.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Embold()));
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
_launchUrl() async{
  const url="https://linx.software/?utm=sth";

  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could Not Launch Url!';
  }
}
