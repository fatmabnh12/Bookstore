import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Flutter_course/Ass.dart';
import 'package:pdf/Flutter_course/Listv.dart';
import 'package:url_launcher/url_launcher.dart';

class Pic extends StatefulWidget {
  const Pic({Key? key}) : super(key: key);

  @override
  _PicState createState() => _PicState();
}

class _PicState extends State<Pic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SvgPicture',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Ass()));
        },),
      ),
      body: ListView(
        children: [
          Text('Displaying Svg pictures',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Step 1: First, you need to install the flutter svg package to your pubspec.yaml '
              'Below you will get access to the link ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          TextButton(onPressed: (){_launchUrl();}, child: Text('Tap here for an information \n'
              'Svg pictures are recommended more with their unique high quality in UI Design',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.blueAccent),)),
          Divider(),
          Text('Step 2: Secondly, you need to import it in your Dart code so you can use',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/d39.png',width: 300,height: 300,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Listv()));
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
  const url="https://pub.dev/packages/flutter_svg";

  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could Not Launch Url!';
  }
}
