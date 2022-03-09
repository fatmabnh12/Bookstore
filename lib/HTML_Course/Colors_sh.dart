import 'package:flutter/cupertino.dart';
import 'package:pdf/HTML_Course/Forms.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/HTML_Course/Model.dart';


class Colors_sh extends StatefulWidget {
  const Colors_sh({Key? key}) : super(key: key);

  @override
  _Colors_shState createState() => _Colors_shState();
}

class _Colors_shState extends State<Colors_sh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTML Colors',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Forms())); },),
      ),
       body:ListView(
         children: [
           Text('HTML Colors ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Padding(padding: EdgeInsets.all(4)),
           Text('HTML colors are expressed as hexadecimal values.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Padding(padding: EdgeInsets.all(4)),
           Text('0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
           Divider(),
           Container(
             color: Colors.white,
             alignment: Alignment.center,
             child: Text('As you can see, there are 16 values there, 0 through F. Zero \n'
                 'represents the lowest value, and F represents the highest.'
               ,textAlign: TextAlign.center,
               style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
             Divider(),
            Text('HTML Color Model ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
            Divider(),
           Text('Colors are displayed in combinations of red, green, and blue light (RGB).'
             ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
           Text('Hex values are written using the hashtag symbol (#), followed by either three \n'
               'or six hex characters.'
             ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
           Text('As shown in the picture below, the circles overlap, forming new colors:'
             ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Image.asset('assets/images/tag63.png',width: 200,height: 200,),
           Text('Color Values',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Divider(),
           Text('All of the possible red, green, and blue combinations potentially number over 16 million.'
             ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Padding(padding: EdgeInsets.all(4)),
           Text('Here are only a few of them: \n'
             ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
           Image.asset('assets/images/tag64.png',width: 200,height: 200,),
           Text('We can mix the colors to form additional colors. \n'
             ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
           Text('Orange and red mix:\n'
             ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
           Image.asset('assets/images/tag65.png',width: 200,height: 200,),
           Divider(),
           Text('Background and Font colors',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Padding(padding: EdgeInsets.all(4)),
           Text('The bgcolor attribute can be used to change the web page background color.\n'
           'This example would produce a dark blue background with a white headline:'
             ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
              Divider(),
            Image.asset('assets/images/tag66.png',width: 200,height: 200,),
            Divider(),
            Text('Result',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
           Divider(),
           Image.asset('assets/images/tag67.png',width: 200,height: 200,),
           Divider(),
           ElevatedButton.icon(
             onPressed:(){
               Navigator.push(context,MaterialPageRoute(builder:(context)=>Model()));},
             label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
             icon:Icon(Icons.arrow_forward_sharp,
               color: HexColor('#FD7E77'),
               size: 12,),
             style: ElevatedButton.styleFrom(
               shape: StadiumBorder(),
               primary: Colors.white,
             ),
           )



























         ],

       ),
    );
  }
}
