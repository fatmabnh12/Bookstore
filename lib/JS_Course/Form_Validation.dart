import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/JS_Course.dart';
import 'package:pdf/JS_Course/Image_Slider.dart';
import 'package:flutter/material.dart';

class Form_Validation extends StatefulWidget {
  const Form_Validation({Key? key}) : super(key: key);

  @override
  _Form_ValidationState createState() => _Form_ValidationState();
}

class _Form_ValidationState extends State<Form_Validation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Validation',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Image_Slider()));
        },),
      ),
      body: ListView(
        children: [
          Text('Form Validation',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('HTML5 adds some attributes that allow form validation. \n'
              'For example, the required attribute can be added to an input field to make it mandatory to fill in.\n'
            'More complex form validation can be done using JavaScript. \n'
            'The form element has an onsubmit event that can be handled to perform validation.\n'
            'For example, let`s create a form with two inputs and one button. \n'
              'The text in both fields should be the same and not blank to pass the validation.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js143.png',width: 200,height: 200,),
          Divider(),
          Text('Now we need to define the validate() function:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js144.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Jscheat()));
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
