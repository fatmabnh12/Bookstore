import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Tools/Codenvy.dart';
import 'package:pdf/Tools/Netbeans.dart';
import 'package:url_launcher/url_launcher.dart';

class Nodejs extends StatefulWidget {
  const Nodejs({Key? key}) : super(key: key);

  @override
  _NodejsState createState() => _NodejsState();
}

class _NodejsState extends State<Nodejs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Node JS',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Netbeans())); },),),
      body: ListView(
        children: [
          Divider(),
          SvgPicture.asset('assets/images/node.svg',width: 50,height: 50,),
          Divider(),
          Text('Node JS',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Node.js is an open source, cross-platform and JavaScript run-time environment that is built to design a variety of web applications and to create web servers and networking tools.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          TextButton(
              onPressed: (){
                _launchUrl();
              },
              child: Text('Click here for more on Nodejs tool',textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),)),
          Divider(),
          Text('Node.js applications run on Windows, Linux, Mac OS, Unix etc. \n'
            'Node.js is efficient and lightweight as it uses non-blocking and event-driven I/O model. \n'
            'Node.js is used by developers to write server-side applications in JavaScript. \n'
            'Node.js modules are used to provide rapid and well-organized solutions for developing back-end structure and integrating with the front-end platforms.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Codenvy()));
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
  const url="";

  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could Not Launch Url!';
  }
}


