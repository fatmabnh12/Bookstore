import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/JS_Course/Changing.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/JS_Course/Image_Slider.dart';
class Handle_elem extends StatefulWidget {
  const Handle_elem({Key? key}) : super(key: key);

  @override
  _Handle_elemState createState() => _Handle_elemState();
}

class _Handle_elemState extends State<Handle_elem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Handling elements',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Changing()));
        },),
      ),
      body: ListView(
        children: [
          Text('Events',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('You can write JavaScript code that executes when an event occurs, such as when a user clicks an HTML element, moves the mouse, or submits a form. \n'
            'When an event occurs on a target element, a handler function is executed. \n'
            'Common HTML events include:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(color: Colors.black54,),
          Image.asset('assets/images/js129.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Handling events',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Let`s display an alert popup when the user clicks a specified button:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js130.png',width: 200,height: 200,),
          Divider(),
          Text('Event handlers can be assigned to elements.\n'
            'For example',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js131.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Events',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The onload and onunload events are triggered when the user enters or leaves the page. \n'
              'These can be useful when performing actions after the page is loaded.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js132.png',width: 200,height: 200,),
          Divider(),
          Text('Similarly, the window.onload event can be used to run code after the whole page is loaded.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js133.png',width: 200,height: 200,),
          Divider(),
          Text('The onchange event is mostly used on textboxes. \n'
              'The event handler gets called when the text inside the textbox changes and focus is lost from the element.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js134.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('Event Listeners',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The addEventListener() method attaches an event handler to an element without overwriting existing event handlers. \n'
              ' You can add many event handlers to one element.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js135.png',width: 200,height: 200,),
          Divider(),
          Text('The first parameter is the event`s type (like "click" or "mousedown"). \n'
          'The second parameter is the function we want to call when the event occurs. \n'
       'The third parameter is a Boolean value specifying whether to use event bubbling or event capturing.\n'
      ' This parameter is optional, and will be described in the next lesson.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Example',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js136.png',width: 200,height: 200,),
          Divider(),
          Text('This adds two event listeners to the element.\n'
            'We can remove one of the listeners:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js137.png',width: 200,height: 200,),
          Divider(),
          Text('Let`s create an event handler that removes itself after being executed:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js138.png',width: 200,height: 200,),
          Divider(color: Colors.black54,),
          Text('After clicking the button, an alert with a random number displays and the event listener is removed.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.redAccent),),
          Divider(color: Colors.black54,),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Image_Slider()));
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
