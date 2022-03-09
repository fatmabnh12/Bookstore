import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/JS_Course/DOM_Course.dart';
import 'package:flutter/material.dart';
import 'package:pdf/JS_Course/Changing.dart';

class Handling_elements extends StatefulWidget {
  const Handling_elements({Key? key}) : super(key: key);

  @override
  _Handling_elementsState createState() => _Handling_elementsState();
}

class _Handling_elementsState extends State<Handling_elements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selecting elements',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>DOM_Course()));
        },),
      ),
      body: ListView(
        children: [
          Text('Selecting Elements',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('All HTML elements are objects. And as we know every object has properties and methods.\n'
            'The document object has methods that allow you to select the desired HTML element.\n'
            'These three methods are the most commonly used for selecting HTML elements:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js120.png',width: 200,height: 200,),
          Divider(),
          Text('In the example below, the getElementById method is used to select the'
              ' element with id="demo" and change its content:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js121.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('The getElementsByClassName() method returns a collection of all elements in the document with the specified class name.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Text('For example, if our HTML page contained three elements with class="demo", \n'
              ' the following code would return all those elements as an array:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js122.png',width: 200,height: 200,),
          Divider(),
          Text('The getElementsByTagName method returns all of the elements of the specified tag name as an array.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js123.png',width: 200,height: 200,),
          Divider(),
          Text('The script will result in the following HTML:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js124.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Working with DOM',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Each element in the DOM has a set of properties and methods that provide information about their relationships in the DOM:\n'
            'element.childNodes returns an array of an element`s child nodes.\n'
            'element.firstChild returns the first child node of an element. \n'
            'element.lastChild returns the last child node of an element. \n'
            'element.hasChildNodes returns true if an element has any child nodes, otherwise false. \n'
            'element.nextSibling returns the next node at the same tree level. \n'
            'element.previousSibling returns the previous node at the same tree level. \n'
            'element.parentNode returns the parent node of an element.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Text('We can, for example, select all child nodes of an element and change their content:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js125.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Changing()));
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
