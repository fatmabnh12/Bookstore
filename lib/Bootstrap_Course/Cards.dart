import 'package:flutter/cupertino.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Bootstrap_Course/Dropdowns.dart';
import 'package:pdf/Bootstrap_Course/Modals_course.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
class Cards_course extends StatefulWidget {
  const Cards_course({Key? key}) : super(key: key);

  @override
  _Cards_courseState createState() => _Cards_courseState();
}

class _Cards_courseState extends State<Cards_course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Modals_course()));
        },),
      ),
      body: ListView(
        children: [
          Text('Cards',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Cards are built with as little markup and styles as possible, '
              'but still manage to deliver a ton of control and customization. '
              'Built with flexbox, they offer easy alignment and mix well with other Bootstrap components.'
              ' They have no margin by default, so use spacing utilities as needed.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/b24.png',width: 200,height: 200,),
          Divider(),
          Text('Result :',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/b25.png',width: 200,height: 200,),
          Divider(),
          Text('Titles,text and links',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Card titles are used by adding .card-title to a <h*> tag. In the same way, links are added and placed next to each other by adding .card-link to an <a> tag. \n'
            'Subtitles are used by adding a .card-subtitle to a <h*> tag. If the .card-title and the .card-subtitle items are placed in a .card-body item, the card title and subtitle are aligned nicely',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/b26.png',width: 200,height: 200,),
          Divider(),
          Text('Result :',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/b27.png',width: 200,height: 200,),
          Divider(),
          Text('Images',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('.card-img-top places an image to the top of the card. With .card-text, text can be added to the card.'
              ' Text within .card-text can also be styled with the standard HTML tags.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/b28.png',width: 200,height: 200,),
          Divider(),
          Text('Result :',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/b29.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Dropdowns()));
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
