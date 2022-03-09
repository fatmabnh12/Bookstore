import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Computer_course/Mem.dart';
import 'package:pdf/Computer_course/Think.dart';

class Pat extends StatefulWidget {
  const Pat({Key? key}) : super(key: key);

  @override
  _PatState createState() => _PatState();
}

class _PatState extends State<Pat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patience',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Think()));
        },),),
      body: ListView(
        children: [
          Text('Patience',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('At times, it happens as you write a code, for which you are confident about, verified it a couple of types, it works in your machine, but after integration the code snippet does not work, all the effort to identify the fault go in vain, you feel stressed out, frustrated and feel like good for nothing.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('During such times, your ability to overcome the situation, try again from scratch and develop patience will prove the developer to be more mature and he/she gets appreciated for the ability to work under pressure environments like releases and acceptance testing or during client demos.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          SvgPicture.asset('assets/images/patience.svg',width: 100,height: 100,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Mem()));
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
