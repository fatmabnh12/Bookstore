import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/HTML_Course/Api.dart';
import 'package:pdf/HTML_Course/Audio.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/HTML_Course/Bar.dart';

class Video extends StatefulWidget {
  const Video({Key? key}) : super(key: key);

  @override
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The video element',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Audio())); },),
      ),
      body: ListView(
        children: [
          Text('Videos in HTML ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Text('The video element is similar to the audio element.\n'
            'You can specify the video source URL using an attribute in a video element,\n'
              ' or using source elements inside the video element:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/tag84.png',width: 200,height: 200,),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('Another aspect that the audio and video elements have in common is that the major browsers do not all support the same file types. '
                'If the browser does not support the first video type, '
                'it will try the next one.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
             Divider(),
          Text('Attributes of <video> ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Padding(padding: EdgeInsets.all(4)),
           Text('Another aspect shared by both the audio and the video elements is that each \n'
               'has controls, autoplay and loop attributes.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
            Padding(padding: EdgeInsets.all(3)),
           Text('In this example, the video will replay after it finishes playing:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
            Image.asset('assets/images/tag85.png',width: 200,height: 200,),
            Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Bar()));},
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
