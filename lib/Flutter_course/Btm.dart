import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pdf/Flutter_course/Draw.dart';

import 'Cont.dart';

class Btm extends StatefulWidget {
  const Btm({Key? key}) : super(key: key);

  @override
  _BtmState createState() => _BtmState();
}

class _BtmState extends State<Btm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Cont()));
        },),
      ),
      body: ListView(
        children: [
          Text('Bottom Navigation Bar',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The bottom navigation bar in Flutter can contain multiple items such as text labels, icons, or both. It allows the user to navigate between the top-level views of an app quickly. If we are using a larger screen, it is better to use a side navigation bar.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Code source',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/d25.png',width: 300,height: 300,),
          Image.asset('assets/images/d26.png',width: 300,height: 300,),
          Divider(),
          Text('Output',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/d27.png',width: 300,height: 300,),
          Image.asset('assets/images/d28.png',width: 300,height: 300,),
          Image.asset('assets/images/d29.png',width: 300,height: 300,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Draw()));
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
