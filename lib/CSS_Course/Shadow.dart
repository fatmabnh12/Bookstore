import 'package:flutter/cupertino.dart';
import 'package:pdf/CSS_Course/Box_model.dart';
import 'package:pdf/CSS_Course/Dec.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Shadow extends StatefulWidget {
  const Shadow({Key? key}) : super(key: key);

  @override
  _ShadowState createState() => _ShadowState();
}

class _ShadowState extends State<Shadow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Text-shadow',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
          backgroundColor: Colors.white,
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Dec()));
          },)
      ),
      body: ListView(
        children: [
          Text('The text-shadow Property',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18),),
          Padding(padding: EdgeInsets.all(4)),
          Divider(),
          Text('The text-shadow property adds shadow to text \n '
              'It takes four values: the first value defines the distance of the shadow in the x (horizontal) direction, \n'
            ' the second value sets the distance in the y (vertical) direction, \n '
            'the third value defines the blur of the shadow, and the fourth value sets the color.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          Text('The HTML :',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag152.png',width: 200,height: 200,),
          Divider(),
          Text('The CSS :',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag153.png',width: 200,height: 200,),
          Divider(),
          Text('In the example above, we created a shadow using the following parameters: \n'
            '5px – the X-coordinate \n'
            '2px – the Y-coordinate \n'
            '4px – the blur radius \n'
            'grey – the color of the shadow',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
          Text('Result :',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/tag154.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Box_model()));
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
