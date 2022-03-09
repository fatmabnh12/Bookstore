import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Tools/Tool.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Linx.dart';

class Quixy extends StatefulWidget {
  const Quixy({Key? key}) : super(key: key);

  @override
  _QuixyState createState() => _QuixyState();
}

class _QuixyState extends State<Quixy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quixy',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Tool())); },),),
      body: ListView(
        children: [
          Divider(),
          Image.asset('assets/images/quixy.png',width: 100,height: 100,),
          Divider(),
          Text('Enterprises use Quixy’s cloud-based no-code platform to empower their business users (citizen developers) to automate workflows and build simple to complex enterprise-grade applications for their custom needs up to ten times faster. \n'
              'All without writing any code.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
           Divider(),
          TextButton(
              onPressed: (){
               _launchUrl();
              },
              child: Text('Visit Quixy Website',textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),)),
          Divider(),
          Text('Deploy apps with a single click and make changes on the fly with no downtime. Ability to use on any browser, any device even in offline mode.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Linx()));
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
  const url="https://quixy.com/our-platform?utm_source=STH&utm_medium=cpc&utm_campaign=STH_softwaredevelopment";

  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could Not Launch Url!';
  }
}
