import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Computer_course/Lang.dart';

import 'Basic_op.dart';

class Self extends StatefulWidget {
  const Self({Key? key}) : super(key: key);

  @override
  _SelfState createState() => _SelfState();
}

class _SelfState extends State<Self> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Skills',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Basic_op()));
        },),),
      body: ListView(
        children: [
          Text('Self Reliance',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('To succeed in coding, you should develop a confidence in yourself, '
              'control your impatience, frustration and should refrain from being dependent on someone else to help you in solving your technical problems, rather you should be self-reliant and keep faith on your capabilities, monitor your efforts and remain optimistic and perseverant in learning.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          SvgPicture.asset('assets/images/self.svg',width: 100,height: 100,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Lang()));
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
