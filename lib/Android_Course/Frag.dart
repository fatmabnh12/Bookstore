import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Android_Course.dart';
import 'package:pdf/Android_Course/Exp.dart';

class Frag extends StatefulWidget {
  const Frag({Key? key}) : super(key: key);

  @override
  _FragState createState() => _FragState();
}

class _FragState extends State<Frag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Android Fragments',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,
            color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Exp()));
        },),
      ),
      body: ListView(
        children: [
          Text('Android Fragments',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('In Android, Fragment is a part of an activity which enable more modular activity design. \n'
              ' It will not be wrong if we say a fragment is a kind of sub-activity. \n '
              'It represents a behaviour or a portion of user interface in an Activity.  \n'
              'We can combine multiple Fragments in Single Activity to build a multi panel UI and reuse a Fragment in multiple Activities. ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/a61.png',width: 200,height: 200,),
          Divider(),
          Text('Basic fragment code XML ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/a62.png',width: 200,height: 200,),
          Divider(),
          Text('Java code',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/a63.png',width: 300,height: 300,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Android_CheatSheet()));
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
