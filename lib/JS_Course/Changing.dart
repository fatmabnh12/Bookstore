import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/JS_Course/Selecting_elements.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/JS_Course/Handling_elements.dart';

class Changing extends StatefulWidget {
  const Changing({Key? key}) : super(key: key);

  @override
  _ChangingState createState() => _ChangingState();
}

class _ChangingState extends State<Changing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Changing elements',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Handling_elements()));
        },),
      ),
      body: ListView(
        children: [
          Text('Changing Attributes',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('As we have seen in the previous lessons, we can change the text content of an element using the innerHTML property.\n'
            'Similarly, we can change the attributes of elements.\n'
            'For example, we can change the src attribute of an image:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js126.png',width: 200,height: 200,),
          Divider(),
          Text('We can change the href attribute of a link:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js127.png',width: 200,height: 200,),
          Divider(),
          Text('Changing Styles',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The style of HTML elements can also be changed using JavaScript. \n'
            'All style attributes can be accessed using the style object of the element. \n'
            'For example:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js128.png',width: 200,height: 200,),
          Divider(),
          Text('The code above changes the text color and width of the div element.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.redAccent),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Handle_elem()));
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
