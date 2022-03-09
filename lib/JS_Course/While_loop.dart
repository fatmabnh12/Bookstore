import 'package:flutter/cupertino.dart';
import 'package:pdf/JS_Course/Boucle.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Do_loop.dart';

class While_loop extends StatefulWidget {
  const While_loop({Key? key}) : super(key: key);

  @override
  _While_loopState createState() => _While_loopState();
}

class _While_loopState extends State<While_loop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The for Loop',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Boucle()));
        },),
      ),
      body: ListView(
        children: [
          Text('The While loop',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The while loop repeats through a block of code, but only as long as a specified condition is true.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Here is the syntax',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js53.png',width: 200,height: 200,),
          Divider(),
          Text('Below a real example',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js54.png',width: 200,height: 200,),
          Divider(),
          Text('The loop in this code will continue to run as long as i is less than, or equal to, 10. And each time the loop runs, it will increase by 1.\n'
            'This will output the values from 0 to 10',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js55.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Endless loops are not good. \n'
              'And one way of this happening is if we forget to increase the variable used in the condition.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13,color: Colors.redAccent),),
          Divider(color: Colors.black54,),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Do_loop()));
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
