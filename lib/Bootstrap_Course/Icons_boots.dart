import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Bootstrap_Course.dart';
import 'package:pdf/Bootstrap_Course/Buttons.dart';
import 'package:url_launcher/url_launcher.dart';

class Bootstrap_icons extends StatefulWidget {
  const Bootstrap_icons({Key? key}) : super(key: key);

  @override
  _Bootstrap_iconsState createState() => _Bootstrap_iconsState();
}

class _Bootstrap_iconsState extends State<Bootstrap_icons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bootstrap Icons',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Buttons()));
        },),
      ),
      body: ListView(
       children: [
         Text('Bootstrap Icons',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
         Divider(),
         Text('Free, high quality, open source icon library with over 1,300 icons.\n'
             ' Include them anyway you like—SVGs, SVG sprite, or web fonts. Use them with or without Bootstrap in any project.',
           textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
         Divider(),
         SvgPicture.asset('assets/images/bootsticon.svg',width: 80,height: 80,),
         Divider(),
         Text('Below the link ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
         Divider(),
         TextButton(onPressed: (){
           _launchUrl();
         }, child:
         Text('Download',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.deepPurple),)),
         Divider(),
         ElevatedButton.icon(
           onPressed:(){
             Navigator.push(context,MaterialPageRoute(builder:(context)=>BootstrapSheetCheat()));
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
  const url="https://icons.getbootstrap.com/";

  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could Not Launch Url!';
  }
}
