import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Android_Course/Toast.dart';

import 'RadioButton.dart';

class Checkbox_intro extends StatefulWidget {
  const Checkbox_intro({Key? key}) : super(key: key);

  @override
  _Checkbox_introState createState() => _Checkbox_introState();
}

class _Checkbox_introState extends State<Checkbox_intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Android Checkbox',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,
            color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Toast_course()));
        },),
      ),
      body: ListView(
        children: [
          Text('Android CheckBox class',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Is a type of two state button either checked or unchecked. \n'
              'There can be a lot of usage of checkboxes. \n'
              'For example, it can be used to know the hobby of the user, activate/deactivate the specific action etc.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('XML Code',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/a21.png',width: 300,height: 300,),
          Divider(),
          Text('Java Code',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/a22.png',width: 300,height: 300,),
          Image.asset('assets/images/a23.png',width: 300,height: 300,),
          Divider(),
          Text('Output',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/a24.png',width: 300,height: 300,),
          Divider(),
          Image.asset('assets/images/a25.png',width: 300,height: 300,),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Radio_Button()));
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
