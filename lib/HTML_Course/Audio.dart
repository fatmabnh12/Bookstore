import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/HTML_Course/Comp.dart';
import 'package:flutter/material.dart';
import 'package:pdf/HTML_Course/Video.dart';

class Audio extends StatefulWidget {
  const Audio({Key? key}) : super(key: key);

  @override
  _AudioState createState() => _AudioState();
}
class _AudioState extends State<Audio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The audio element',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Comp())); },),
      ),
      body: ListView(
        children: [
          Text('Audio on the Web',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('Before HTML5, there was no standard for playing audio files on a web page. \n'
            'The HTML5 <audio> element specifies a standard for embedding audio in a web page.',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          Text('There are two different ways to specify the audio source file of URL. \n'
              'The first uses the source attribute:',textAlign: TextAlign.center,),
           Divider(),
          Image.asset('assets/images/tag78.png',width: 200,height: 200,),
          Divider(),
          Text('The second way uses the <source> element inside the <audio> element:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag79.png',width: 200,height: 200,),
          Divider(),
          Text('The <audio> element creates an audio player inside the browser.',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag80.png',width: 200,height: 200,),
          Divider(),
          Text('Result :',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag81.png',width: 200,height: 200,),
          Text('Attributes of <audio>',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('controls \n '
              'Specifies that audio controls should be displayed (such as a play/pause button, etc.)',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:13,fontWeight: FontWeight.w600 ),),
          Padding(padding: EdgeInsets.all(4),),
          Text('autoplay \n '
              'When this attribute is defined, audio starts playing as soon as it is ready, without asking for the visitor of permission.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:13,fontWeight: FontWeight.w600 ),),
          Divider(),
          Image.asset('assets/images/tag82.png',width: 200,height: 200,),
          Divider(),
          Text('loop \n '
            'This attribute is used to have the audio replay every time it is finished.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag83.png',width: 200,height: 200,),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Video()));},
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
