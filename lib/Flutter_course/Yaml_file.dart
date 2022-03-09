import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/Flutter_course/Env.dart';

import 'Wid_intro.dart';

class Yaml_file extends StatefulWidget {
  const Yaml_file({Key? key}) : super(key: key);

  @override
  _Yaml_fileState createState() => _Yaml_fileState();
}

class _Yaml_fileState extends State<Yaml_file> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pubspec file',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Env()));
        },),
      ),
      body: ListView(
        children: [
          Text('Flutter and the pubspec file ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The pubspec file specifies dependencies that the project requires, '
              'such as particular packages (and their versions), fonts, or image files. \n'
              ' It also specifies other requirements, such as dependencies on developer packages (like testing or mocking packages), '
              'or particular constraints on the version of the Flutter SDK.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/d5.png',width: 300,height: 300,),
          Divider(),
          Text('Assets',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Common types of assets include static data (for example, JSON files), configuration files, icons, and images (JPEG, WebP, GIF, animated WebP/GIF, PNG, BMP, and WBMP).'
              'You must declare each photo with the right path',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Fonts',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Each entry  in the fonts section should have a family key with the font family name, and a fonts key with a list specifying the asset and other descriptors for the font.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Wid_intro()));
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
