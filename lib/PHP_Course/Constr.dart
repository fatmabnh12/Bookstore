import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/PHP_Course/Classesandobj.dart';

import '../Php_Course.dart';

class Constr extends StatefulWidget {
  const Constr({Key? key}) : super(key: key);

  @override
  _ConstrState createState() => _ConstrState();
}

class _ConstrState extends State<Constr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Constructor & Destructor',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Classesandobj()));
        },),
      ),
      body: ListView(
        children: [
          Text('PHP Class Constructor',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('PHP provides the constructor magic method __construct(), which is called automatically whenever a new object'
              ' is instantiated.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p77.png',width: 200,height: 200,),
          Divider(),
          Text('The __construct() method is often used for any initialization that the object may need before it is used. \n'
              ' Parameters can be included in __construct() to accept values when the object is created.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p78.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('PHP Class Destructor',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Similar to the class constructor, '
              'there is a destructor magic method __destruct(), which is automatically called when an object is destroyed.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p79.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){

              Navigator.push(context,MaterialPageRoute(builder:(context)=>PHP_sheetcheat()));},
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
