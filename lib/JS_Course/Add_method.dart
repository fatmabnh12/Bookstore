import 'package:flutter/cupertino.dart';
import 'package:pdf/JS_Course/Obj_Course.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:pdf/JS_Course/JS_Arrays.dart';
import 'package:hexcolor/hexcolor.dart';

class Add_method extends StatefulWidget {
  const Add_method({Key? key}) : super(key: key);

  @override
  _Add_methodState createState() => _Add_methodState();
}

class _Add_methodState extends State<Add_method> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adding methods',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Obj_Course()));
        },),
      ),
      body: ListView(
        children: [
          Text('Methods',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Methods are functions that are stored as object properties. \n'
            'Use the following syntax to create an object method:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js96.png',width: 200,height: 200,),
          Divider(),
          Text('Access an object method using the following syntax:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js97.png',width: 200,height: 200,),
          Divider(),
          Text('A method is a function, belonging to an object. It can be referenced using the this keyword.\n'
            'The this keyword is used as a reference to the current object, '
              'meaning that you can access the objects properties and methods using it.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Example',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js98.png',width: 200,height: 200,),
          Divider(),
          Text('You can also define the function outside of the constructor function and associate it with the object.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js99.png',width: 200,height: 200,),
          Divider(),
          Text('As you can see, we have assigned the object`s yearOfBirth property to the bornYear function. \n'
          'The this keyword is used to access the age property of the object, which is going to call the method.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Call the method as usual',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js100.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>JS_Arrays()));
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
