import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Android_Course/Android_list.dart';
import 'package:pdf/Android_Course/Option_menu.dart';

class Image_sw extends StatefulWidget {
  const Image_sw({Key? key}) : super(key: key);

  @override
  _Image_swState createState() => _Image_swState();
}

class _Image_swState extends State<Image_sw> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Android Image Switcher',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,
            color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Android_list()));
        },),
      ),
      body: ListView(
        children: [
          Text('Image Switcher',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Android image switcher provides an animation over images to transition from one image to another. In order to use image switcher, we need to implement ImageSwitcher component in .xml file.'
              'The setFactory() method of ImageSwitcher provide implementation of ViewFactory interface. ViewFactory interface implements its unimplemented method and returns an ImageView.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Create content_main.xml file in layout folder.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('XML',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Image.asset('assets/images/a34.png',width: 200,height: 200,),
          Divider(),
          Text('Java',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/a35.png',width: 300,height: 300,),
          Divider(),
          Text('Output',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/a36.png',width: 300,height: 300,),
          Image.asset('assets/images/a37.png',width: 300,height: 300,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Option_menu()));
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
