import 'package:flutter/cupertino.dart';
import 'package:pdf/JS_Course/Intro_object.dart';
import 'package:pdf/JS_Course/Return_stat.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';

class Alerts extends StatefulWidget {
  const Alerts({Key? key}) : super(key: key);

  @override
  _AlertsState createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert,Prompt,Confirm',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Return_stat()));
        },),
      ),
      body: ListView(
        children: [
          Text('The Alert Box',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('An alert box is used when you want to ensure that information gets through to the user. \n'
            'When an alert box pops up, the user must click OK to proceed. \n'
            'The alert function takes a single parameter, which is the text displayed in the popup box.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Example :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js71.png',width: 200,height: 200,),
          Divider(),
          Text('Result :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js72.png',width: 200,height: 200,),
          Divider(),
          Text('To display line breaks within a popup box, use a backslash followed by the character n. :',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js73.png',width: 200,height: 200,),
          Divider(),
          Text('Result :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js74.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('The Prompt Box',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('A prompt box is often used to have the user input a value before entering a page. \n'
            'When a prompt box pops up, the user will have to click either OK or Cancel to proceed after entering the input value.\n'
            'If the user clicks OK, the box returns the input value. If the user clicks Cancel, the box returns null.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Text('The prompt() method takes two parameters.'
              '- The first is the label, which you want to display in the text box. \n'
             '- The second is a default string to display in the text box (optional).',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Example:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js75.png',width: 200,height: 200,),
          Divider(),
          Text('Result :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js76.png',width: 200,height: 200,),
          Divider(),
          Text('The Confirm Box',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('A confirm box is often used to have the user verify or accept something. \n'
            'When a confirm box pops up, the user must click either OK or Cancel to proceed. \n'
            'If the user clicks OK, the box returns true. If the user clicks Cancel, the box returns false. \n',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Example:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js77.png',width: 200,height: 200,),
          Divider(),
          Text('Result :',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js78.png',width: 200,height: 200,),
          Divider(),
          Text('And when the user clicks OK :',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js79.png',width: 200,height: 200,),
          Divider(),
          Text('The result when the user clicks Cancel:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js80.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Intro_object()));
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
