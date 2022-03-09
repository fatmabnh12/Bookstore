import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/JS_Course/Intro.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Variables.dart';

class First extends StatefulWidget {
  const First({Key? key}) : super(key: key);

  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creating your first Javascript',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Intro()));
        },),
      ),
      body: ListView(
        children: [
          Text('Ready to set Javascript ?',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Let’s start with the basics and add some JavaScript to a webpage. \n '
            'On the web, JavaScript code lives inside the HTML document, \n'
              'and needs to be enclosed by <script> and </script>: \n ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
          Image.asset('assets/images/js1.png',width: 200,height: 200,),
          Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('You can put the script tag anywhere in the HTML document.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
           Divider(),
          Text('Output ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Lets use JavaScript to print "Hello World" to the browser. '
              'This is what that would look like.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize:13,fontWeight: FontWeight.w600,),),
          Divider(),
          Image.asset('assets/images/js1.png',width: 200,height: 200,),
          Divider(),
          Text('Notice some extra stuff there? Nothing gets past you!'
              'Time to introduce the document.write() function. This is what we need to use to write text into our HTML document.'
          'Feeling fancy? Of course you are! You can also use standard HTML markup language to customize the appearance text in the output:'
          ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/js2.png',width: 200,height: 200,),
          Divider(),
          Text('Output to console ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Divider(),
          Text('Right, we’re now experts in writing HTML output with document.write(). \n '
              'Time for a different type of output. Let’s learn about output to the browser console.\n'
              'For this we’ll be needing the trusty console.log() function. \n'
            'The console is part of the web browser and allows you to log messages, run JavaScript code, and see errors and warnings.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('It looks like this:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/js3.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Variables()));
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
