import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Bootstrap_Course/Grid_System.dart';
import 'package:pdf/Bootstrap_Course/Columns.dart';


class Containers_course extends StatefulWidget {
  const Containers_course({Key? key}) : super(key: key);

  @override
  _Containers_courseState createState() => _Containers_courseState();
}

class _Containers_courseState extends State<Containers_course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Containers',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Grid_System()));
        },),
      ),
      body: ListView(
        children: [
         Text('Containers',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Containers are a fundamental building block of Bootstrap that contain, pad, and align your content within a given device or viewport.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Bootstrap comes with three different containers: \n'
              '.container, which sets a max-width at each responsive breakpoint \n'
              '.container-fluid, which is width: 100% at all breakpoints \n'
              '.container-{breakpoint}, which is width: 100% until the specified breakpoint',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/b5.png',width: 200,height: 200,),
          Divider(),
          Text('Responsive containers',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Responsive containers allow you to specify a class that is 100% wide until the specified breakpoint is reached,'
              ' after which we apply max-widths for each of the higher breakpoints. \n '
              'For example, .container-sm is 100% wide to start until the sm breakpoint is reached, where it will scale up with md, lg, xl, and xxl.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/b6.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Columns()));
            },
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
