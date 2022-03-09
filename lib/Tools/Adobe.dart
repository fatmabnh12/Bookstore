import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/Tools/Codenvy.dart';
import 'package:pdf/Tools/UML.dart';
import 'package:url_launcher/url_launcher.dart';
class Adobe extends StatefulWidget {
  const Adobe({Key? key}) : super(key: key);

  @override
  _AdobeState createState() => _AdobeState();
}

class _AdobeState extends State<Adobe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adobe XD',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Codenvy())); },),),
      body: ListView(
        children: [
           Divider(),
          SvgPicture.asset('assets/images/adobe.svg',width: 50,height: 50,),
          Divider(),
          Text('Adobe XD',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Is a vector-based UI and UX design tool and it can be used to design anything from smartwatch apps to fully fledged websites.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Among Adobe XD’s features we can find the following: \n'
              'Prototyping design tools \n'
              '3D transforms \n'
              'Animations and transition design \n'
              'Components (which are completely fluid) \n'
            'Support for 3rd party plugins and extensions \n'
             'Responsive resizing of content and layout \n'
              'Repeat grids',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          TextButton(
              onPressed: (){
                _launchUrl();
              },
              child: Text('Take a look here ',textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),)),
          Divider(),


        ],
      ),

    );
  }
}
_launchUrl() async{
  const url="https://www.adobe.com/fr/products/xd.html";

  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could Not Launch Url!';
  }
}
