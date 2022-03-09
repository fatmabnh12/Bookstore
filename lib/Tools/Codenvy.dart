import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Tools/Node.dart';

import 'Adobe.dart';

class Codenvy extends StatefulWidget {
  const Codenvy({Key? key}) : super(key: key);

  @override
  _CodenvyState createState() => _CodenvyState();
}

class _CodenvyState extends State<Codenvy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Codenvy',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Nodejs())); },),),
         body: ListView(
           children: [
             Divider(),
             Image.asset('assets/images/logoo.png',width: 100,height: 100,),
             Divider(),
             Text('Codenvy',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
             Divider(),
             Text('Codenvy is a cloud development environment used for coding and debugging the applications.\n '
                 'It can support sharing projects in real-time and can collaborate with others.',
               textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             Divider(),
             Text('As Codenvy is a cloud-based IDE there is no need for any installation and configuration of this software development tool.',
               textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             Divider(),
             ElevatedButton.icon(
               onPressed:(){
                 Navigator.push(context,MaterialPageRoute(builder:(context)=>Adobe()));
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
