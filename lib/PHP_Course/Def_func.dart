import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/PHP_Course/Func_param.dart';
import 'package:pdf/PHP_Course/Include.dart';

class Def_func extends StatefulWidget {
  const Def_func({Key? key}) : super(key: key);

  @override
  _Def_funcState createState() => _Def_funcState();
}

class _Def_funcState extends State<Def_func> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User-Defined Functions',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Include()));
        },),
      ),
      body: ListView(
        children: [
          Text('Functions',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('A function is a block of statements that can be used repeatedly in a program. \n'
            'A function will not execute immediately when a page loads. It will be executed by a call to the function.\n'
            'A user defined function declaration starts with the word function:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p57.png',width: 200,height: 200,),
          Divider(),
          Text('In the example below, we create the function sayHello(). \n'
              'The opening curly brace ({) indicates that this is the beginning of the function code, while the closing curly brace (}) indicates that this is the end.\n'
         'To call the function, just write its name:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p58.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Func_param()));
            },
            label: Text('Continue',style: GoogleFonts.poppins(fontSize: 12,color: HexColor('#FD7E77'),fontWeight: FontWeight.w800),),
            icon:Icon(Icons.arrow_forward_sharp,
              color: HexColor('#FD7E77'),
              size: 12,),
            style: ElevatedButton.styleFrom(
              shape: StadiumBorder(),
              primary: Colors.white,
            ),),




        ],
      ),
    );
  }
}
