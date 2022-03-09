import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Android_Course/Image_sw.dart';
import 'package:pdf/Android_Course/Mediaplayer.dart';

class Option_menu extends StatefulWidget {
  const Option_menu({Key? key}) : super(key: key);

  @override
  _Option_menuState createState() => _Option_menuState();
}

class _Option_menuState extends State<Option_menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Option menu',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,
            color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Image_sw()));
        },),
      ),
      body: ListView(
        children: [
          Text('Android Option Menu',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Android Option Menus are the primary menus of android. They can be used for settings, search, delete item etc.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Text('It contains three items as show below. It is created automatically inside the res/menu directory.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/a38.png',width: 300,height: 300,),
          Divider(),
          Text('This class displays the content of menu.xml file and performs event handling on clicking the menu items.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/a39.png',width: 300,height: 300,),
          Divider(),
          Text('Output',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/a40.png',width: 300,height: 300,),
          Image.asset('assets/images/a41.png',width: 300,height: 300,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Mediaplayer()));
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
