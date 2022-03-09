import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:pdf/Flutter_course/Dart_language.dart';
import 'package:pdf/Flutter_course/Yaml_file.dart';
import 'package:url_launcher/url_launcher.dart';

class Env extends StatefulWidget {
  const Env({Key? key}) : super(key: key);

  @override
  _EnvState createState() => _EnvState();
}

class _EnvState extends State<Env> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting up your environment',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Dart_language()));
        },),
      ),
      body: ListView(
        children: [
          Text('Installation in Windows',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight. bold),),
          Divider(),
          Text('In this section, let us see how to install Flutter SDK and its requirement'
              'in a windows system ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
         TextButton(
             onPressed: (){
               _launchUrl();
             },
             child: Text('Step 1) Go to this link to download the latest '
             'version of Flutter SDK ',
           textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.blue),)),
          Divider(),
          Text('Step 2) Unzip the zip archive in a folder ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Step 3) Update the system path to include flutter bin directory. ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Step 4) Flutter provides a tool, flutter doctor to check that all the requirement of flutter development is met.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/d2.png',width: 200,height: 200,),
          Divider(),
          Text('Step 5 Running the above command will analyze the system and show its report as shown below ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/d3.png',width: 300,height: 300,),
          Divider(),
          Text('Step 6 − Install the latest Android SDK, if reported by flutter doctor',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Step 7 − Install the latest Android Studio, if reported by flutter doctor',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Step 8- Install flutter and Dart plugin in Android Studio ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/d4.png',width: 300,height: 300,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Yaml_file()));
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
_launchUrl() async{
  const url="https://flutter.dev/docs/get-started/install/windows";

  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could Not Launch Url!';
  }
}