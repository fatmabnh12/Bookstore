import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Tools/Github.dart';
import 'package:pdf/Tools/Node.dart';
import 'package:url_launcher/url_launcher.dart';

class Netbeans extends StatefulWidget {
  const Netbeans({Key? key}) : super(key: key);

  @override
  _NetbeansState createState() => _NetbeansState();
}

class _NetbeansState extends State<Netbeans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Netbeans',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Github())); },),),
      body: ListView(
        children: [
          Divider(),
          SvgPicture.asset('assets/images/net.svg',width: 50,height: 50,),
          Divider(),
          Text('Netbeans',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('NetBeans is an open source and a free software development tool written in Java that develops world-class web,'
              ' mobile, and desktop applications easily and quickly. \n'
              ' It uses C / C++, PHP, JavaScript, Java etc.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          TextButton(
              onPressed: (){
                _launchUrl();
              },
              child: Text('Click here for more details',textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),)),
          Divider(),
          Text('NetBeans supports cross-platform and works on any operating system like Linux, Mac OS, Solaris, Windows etc.\n'
            'NetBeans offers features like Smart Code Editing, writing bug-free code, easy management process, and quick user interface development.\n'
            'Java applications can be easily updated to its newer editions using the code analyzers, editors and converters offered by NetBeans 8 IDE.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Nodejs()));
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
  const url="https://netbeans.apache.org//";

  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could Not Launch Url!';
  }
}

