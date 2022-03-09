import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/JS_Course/Alerts.dart';
import 'package:pdf/JS_Course/Param.dart';

class Return_stat extends StatefulWidget {
  const Return_stat({Key? key}) : super(key: key);

  @override
  _Return_statState createState() => _Return_statState();
}

class _Return_statState extends State<Return_stat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The return Statement',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Param()));
        },),
      ),
      body: ListView(
        children: [
          Text('Function Return',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('A function can have an optional return statement. It is used to return a value from the function. \n'
            'This statement is useful when making calculations that require a result.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Text('Use the return statement to return a value.\n'
            'For example, let`s calculate the product of two numbers, and return the result.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js69.png',width: 200,height: 200,),
          Divider(),
          Text('Another example',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/js70.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Alerts()));
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
