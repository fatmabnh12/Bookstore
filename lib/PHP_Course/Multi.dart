import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/PHP_Course/Assoc_array.dart';
import 'package:pdf/PHP_Course/If_Stat.dart';

class Multi extends StatefulWidget {
  const Multi({Key? key}) : super(key: key);

  @override
  _MultiState createState() => _MultiState();
}

class _MultiState extends State<Multi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Associative Arrays',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Assoc_array() ));
        },),
      ),
      body: ListView(
        children: [
          Text('Multi-Dimensional Arrays',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('A multi-dimensional array contains one or more arrays. \n'
            'The dimension of an array indicates the number of indices you would need to select an element.\n'
            '- For a two-dimensional array, you need two indices to select an element \n'
            '- For a three-dimensional array, you need three indices to select an element',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Let`s create a two-dimensional array that contains 3 arrays:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/p36.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>If_Stat()));
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
