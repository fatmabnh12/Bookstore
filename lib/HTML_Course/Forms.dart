import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:pdf/HTML_Course/Colors_sh.dart';
import 'package:pdf/HTML_Course/Elements.dart';

class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Elements())); },),
      ),
       body: ListView(
         children: [
           Text('The <form> Element',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Padding(padding: EdgeInsets.all(4)),
           Text('HTML forms are used to collect information from the user. \n'
               'Forms are defined using the <form> element, with its opening and closing \n'
               'tags:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
           Image.asset('assets/images/tag51.png',width: 200,height: 200,),
           Divider(),
           Text('Use the action attribute to point to a webpage that will load after the user '
             'submits the form.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
           Text('The method and name Attributes',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Divider(),
           Text('The method attribute specifies the HTTP method (GET or POST) to be used \n '
               'when forms are submitted (see below for description): \n',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
           Image.asset('assets/images/tag53.png',width: 200,height: 200,),
           Container(
             color: Colors.white,
             alignment: Alignment.center,
             child: Text('When you use GET, the form data will be visible in the page address.'
                ' Use POST if the form is updating data, or includes sensitive information (passwords).'
              'POST offers better security because the submitted data is not visible in the page address.'
               ,textAlign: TextAlign.center,
               style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
             Divider(),
           Text('To take in user input, you need the corresponding form elements, such as text  \n'
             'fields. The <input> element has many variations, depending on the type attribute. It can be a text, password, radio, URL, submit, etc.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
           Text('The example below shows a form requesting a username and password:',
             textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Image.asset('assets/images/tag54.png',width: 200,height: 200,),
            Divider(),
            Text('Result ',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            Divider(),
           Image.asset('assets/images/tag55.png',width: 200,height: 200,),
           Divider(),
           Text('Form Elements',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
           Padding(padding: EdgeInsets.all(4)),
           Text('If we change the input type to radio, it allows the user select only one of a \n'
               'number of choices ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
           Image.asset('assets/images/tag57.png',width: 200,height: 200,),
           Text('Result ',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
           Image.asset('assets/images/tag58.png',width: 200,height: 200,),
           Text('The type "checkbox" allows the user to select more than one option:'
           ,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
           Image.asset('assets/images/tag59.png',width: 200,height: 200,),
           Divider(),
           Text('Result ',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
           Divider(),
           Image.asset('assets/images/tag60.png',width: 200,height: 200,),
           Divider(),
           Text('The submit button submits a form to its action attribute:'
             ,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
           Divider(),
           Image.asset('assets/images/tag61.png',width: 200,height: 200,),
           Divider(),
           Text('Result ',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
           Image.asset('assets/images/tag62.png',width: 200,height: 200,),
           Container(
             color: Colors.white,
             alignment: Alignment.center,
             child: Text('After the form is submitted, \n'
                 'the data should be processed on the \n'
                 ' server using a programming language, such as PHP.'
               ,textAlign: TextAlign.center,
               style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
              Divider(),
               ElevatedButton.icon(
             onPressed:(){
               Navigator.push(context,MaterialPageRoute(builder:(context)=>Colors_sh()));},
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
