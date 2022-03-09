import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/JS_Course/Breakandcontinue.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/JS_Course/Param.dart';
import 'package:pdf/JS_Course/Return_stat.dart';

class User_func extends StatefulWidget {
  const User_func({Key? key}) : super(key: key);

  @override
  _User_funcState createState() => _User_funcState();
}

class _User_funcState extends State<User_func> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User-Defined Functions',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Breakandcontinue()));
        },),
      ),
      body: ListView(
        children: [
          Text('JavaScript Functions',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18),),
          Divider(),
          Text('A JavaScript function is a block of code designed to perform a particular task. \n'
            'The main advantages of using functions: \n'
            'Code reuse: Define the code once, and use it many times. \n'
            'Use the same code many times with different arguments, to produce different results.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Text('Defining a function ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18),),
          Divider(color: Colors.black54,),
          Text('To define a JavaScript function, use the function keyword, followed by a name, followed by a set of parentheses (). \n'
            'The code to be executed by the function is placed inside curly brackets {}.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js63.png',width: 200,height: 200,),
          Divider(),
          Text('Calling a function ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 18),),
          Divider(),
          Text('To call a function, start with the name of the function, then follow it with the arguments in parentheses.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js64.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Once the function is defined, JavaScript allows you to call it as many times as you want to.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js65.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Param()));
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
