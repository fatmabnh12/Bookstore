import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Bootstrap_Course/Tables.dart';
import 'package:pdf/Bootstrap_Course/Buttons.dart';

class Jumbotron extends StatefulWidget {
  const Jumbotron({Key? key}) : super(key: key);

  @override
  _JumbotronState createState() => _JumbotronState();
}

class _JumbotronState extends State<Jumbotron> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jumbotron',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Tables()));
        },),
      ),
      body: ListView(
        children: [
          Text('Jumbotron',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('A jumbotron indicates a big box for calling extra attention to some special content or information. \n'
              'A jumbotron is displayed as a grey box with rounded corners. It also enlarges the font sizes of the text inside it. \n'
              'Tip: Inside a jumbotron you can put nearly any valid HTML, including other Bootstrap elements/classes. \n'
              'Use a <div> element with class .jumbotron to create a jumbotron:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Jumbotron Inside Container',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Place the jumbotron inside the <div class="container"> if you want the jumbotron to NOT extend to the edge of the screen:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/b40.png',width: 200,height: 200,),
          Divider(),
          Text('Result :',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/b41.png',width: 200,height: 200,),
          Divider(),
          Text('Jumbotron Outside Container',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Place the jumbotron outside the <div class="container"> if you want the jumbotron to extend to the screen edges:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/b42.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Buttons()));
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
