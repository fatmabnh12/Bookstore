import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Tools/Atom.dart';
import 'package:pdf/Tools/Linx.dart';
import 'package:url_launcher/url_launcher.dart';

class Embold extends StatefulWidget {
  const Embold({Key? key}) : super(key: key);

  @override
  _EmboldState createState() => _EmboldState();
}

class _EmboldState extends State<Embold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Embold',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Linx())); },),),
         body: ListView(
        children: [
          Divider(),
          SvgPicture.asset('assets/images/embold.svg',width: 50,height: 50,),
          Divider(),
          Text('Embold',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Fixing bugs before deployment saves a lot of time and energy in the long run. Embold is a software analytics platform that analyses source code and uncovers issues that impact stability, robustness, security, and maintainability.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          TextButton(
              onPressed: (){
                _launchUrl();
              },
              child: Text('Visit Embold Website',textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),)),
          Divider(),
          Text('With the Embold plugins, you can pick up code smells and vulnerabilities as you code, before making commits. \n'
              'Unique anti-pattern detection prevents the compounding of unmaintainable code. \n'
              'Integrate seamlessly with Github, Bitbucket, Azure, and Git and plugins available for Eclipse and IntelliJ IDEA.'
            'Get deeper and faster checks than standard code editors, for over 10 languages',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Atom()));
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
  const url="https://embold.io/?utm_source=STH&utm_medium=Listing&utm_campaign=SoftwareDevelopmentTools";

  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could Not Launch Url!';
  }
}
