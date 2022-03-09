import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/JS_Course/Date_Object.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/JS_Course/Selecting_elements.dart';
import 'package:google_fonts/google_fonts.dart';

class DOM_Course extends StatefulWidget {
  const DOM_Course({Key? key}) : super(key: key);

  @override
  _DOM_CourseState createState() => _DOM_CourseState();
}

class _DOM_CourseState extends State<DOM_Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('What is DOM ?',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Date_Object()));
        },),
      ),
      body: ListView(
        children: [
          Text('What is DOM ?',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('When you open any webpage in a browser, the HTML of the page is loaded and rendered visually on the screen.\n'
            'To accomplish that, the browser builds the Document Object Model of that page, which is an object oriented model of its logical structure.\n'
            'The DOM of an HTML document can be represented as a nested set of boxes:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js118.png',width: 200,height: 200,),
          Divider(),
          Text('The DOM represents a document as a tree structure. \n'
            'HTML elements become interrelated nodes in the tree. \n'
            'All those nodes in the tree have some kind of relations among each other.\n'
            'Nodes can have child nodes. Nodes on the same tree level are called siblings.\n'
            'For example, consider the following structure:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js118.png',width: 200,height: 200,),
          Divider(),
          Text('There is a predefined document object in JavaScript, which can be used to access all elements on the DOM.\n'
             'In other words, the document object is the owner (or root) of all objects in your webpage. \n'
         'So, if you want to access objects in an HTML page, you always start with accessing the document object.\n'
         ' For example: \n',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js119.png',width: 200,height: 200,),
          Divider(),
          Text('As body is an element of the DOM, \n'
              'we can access it using the document object and change the content of the innerHTML property.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The innerHTML property can be used on almost all HTML elements to change its content.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Handling_elements()));
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
