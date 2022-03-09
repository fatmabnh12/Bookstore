import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Android_Course/Option_menu.dart';
import 'package:pdf/Android_Course/Videoplayer.dart';

class Mediaplayer extends StatefulWidget {
  const Mediaplayer({Key? key}) : super(key: key);

  @override
  _MediaplayerState createState() => _MediaplayerState();
}

class _MediaplayerState extends State<Mediaplayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio MediaPlayer',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,
            color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Option_menu()));
        },),
      ),
      body: ListView(
        children: [
          Text('MediaPlayer',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('We can play and control the audio files in android by the help of MediaPlayer class.\n'
              'Here, we are going to see a simple example to play the audio file. '
              'In the next page, we will see the example to control the audio playback like start, stop, pause etc.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Java Code',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Image.asset('assets/images/a42.png',width: 300,height: 300,),
          Image.asset('assets/images/a43.png',width: 300,height: 300,),
          Divider(),
          Text('XML Code',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/a44.png',width: 300,height: 300,),
          Divider(),
          Image.asset('assets/images/a45.png',width: 300,height: 300,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Videoplayer()));
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
