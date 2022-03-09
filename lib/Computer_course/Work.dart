import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/Computer_course/Keys.dart';
import 'package:pdf/Computer_course/Introduc.dart';

class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Computer programming',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Introduc()));
        },),),
      body: ListView(
        children: [
          Text('How Do Computers Work?',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('A computer is a machine that processes information and this information can be any data that is provided by the user through devices such as keyboards, mouse, scanners, digital cameras, joysticks, and microphones. These devices are called Input Devices and the information provided is called input.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Computer Storage or Memory is of Two Types. \n'
              'Primary Memory or RAM (Random Access Memory): '
              'This is the internal storage that is used in the computers and is located on the motherboard. \n'
              'RAM can be accessed or modified quickly in any order or randomly. '
              'The information that is stored in RAM is lost when the computer is turned off.'
               'Secondary Memory or ROM (Read-Only Memory): \n'
              ' Information (data) stored in ROM is read-only, and is stored permanently. \n'
              ' The ROM stored instruction is required to start a computer.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
          Divider(),
          Text('Processing: Operations done on this information (input data) is called Processing. The Processing of input is done in the Central Processing Unit which is popularly known as CPU.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
          Divider(),
          Text('Output Devices: These are the computer hardware devices that help in converting information into human-readable form. Some of the output devices include Visual Display Units (VDU) such as a Monitor, Printer, Graphics Output devices, Plotters, Speakers, etc.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
          Divider(),
          Text('In the development environment, the products, software, and solutions can be designed as scenarios, use cases, and data flow diagrams.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,color: Colors.red),),
          Divider(),
          Image.asset('assets/images/c2.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Keys()));
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
