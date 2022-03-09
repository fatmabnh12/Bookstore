import 'package:flutter/cupertino.dart';
import 'package:pdf/JS_Course/Intro_object.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/JS_Course/Obj_Course.dart';

class Creation extends StatefulWidget {
  const Creation({Key? key}) : super(key: key);

  @override
  _CreationState createState() => _CreationState();
}

class _CreationState extends State<Creation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creating your own objects',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Intro_object()));
        },),
      ),
      body: ListView(
        children: [
          Text('The Object Constructor',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('In the previous lesson, we created an object using the object literal (or initializer) syntax.',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js88.png',width: 200,height: 200,),
          Divider(),
          Text('The standard way to create an "object type" is to use an object constructor function.',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js89.png',width: 200,height: 200,),
          Divider(),
          Text('The above function (person) is an object constructor, which takes parameters and assigns them to the object properties.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(color: Colors.black54,),
          Text('Creating objects',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Once you have an object constructor, you can use the new keyword to create new objects of the same type.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
           Divider(),
          Image.asset('assets/images/js90.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Consider the following example ',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js91.png',width: 200,height: 200,),
          Divider(),
          Text('Access the object`s properties by using the dot syntax, as you did before.',
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js92.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Obj_Course()));
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

