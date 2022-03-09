import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/JS_Course/Form_Validation.dart';
import 'package:pdf/JS_Course/Handling_elements.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Selecting_elements.dart';


class Image_Slider extends StatefulWidget {
  const Image_Slider({Key? key}) : super(key: key);

  @override
  _Image_SliderState createState() => _Image_SliderState();
}

class _Image_SliderState extends State<Image_Slider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Slider',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Handle_elem()));
        },),
      ),
      body: ListView(
        children: [
          Text('Creating an Image slider',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Now we can create a sample image slider project. The images will be changed using "Next" and "Prev" buttons.\n'
            'Now, let’s create our HTML, which includes an image and the two navigation buttons:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js139.png',width: 200,height: 200,),
          Divider(),
          Text('Next, let`s define our sample images in an array:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js140.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Now we need to handle the Next and Prev button clicks and call the corresponding functions to change the image.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('HTML ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js141.png',width: 200,height: 200,),
          Divider(),
          Text('JS ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js142.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Form_Validation()));
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
