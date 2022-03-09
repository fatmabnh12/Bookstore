import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pdf/HTML_Course/Bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/HTML_Course/Svg_course.dart';
class Api extends StatefulWidget {
  const Api({Key? key}) : super(key: key);

  @override
  _ApiState createState() => _ApiState();
}

class _ApiState extends State<Api> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Web storage API ',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Bar())); },),
      ),
      body: ListView(
        children: [
          Text('HTML5 Web Storage',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4),),
          Text('With HTML5 web storage, websites can store data on a user local computer.\n'
            'Before HTML5, we had to use JavaScript cookies to achieve this functionality.'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The Advantages of Web Storage',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Text('- More secure \n'
              '- Faster \n '
              '- Stores a larger amount of data \n'
               '- Stored data is not sent with every server request'
            ,textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600,color: Colors.red),),
             Divider(),
          Text('Types of Web Storage Objects',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
           Padding(padding: EdgeInsets.all(4)),
           Text('There are two types of web storage objects:\n'
              '- sessionStorage()\n'
               '- localStorage() \n',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
             Divider(),
          Text('Local vs Session',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
           Text('- Session Storage is destroyed once the user closes the browser \n'
               '- Local Storage stores data with no expiration date',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('You need to be familiar with basic JavaScript in order to understand \n'
                'and use the API.'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
             Divider(),
            Text('Working with Values',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
            Divider(),
          Text('The syntax for web storage for both local and session storage is very simple and similar.\n'
            'The data is stored as key/value pairs.'
            ,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
            Divider(),
          Text('Storing a value',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Padding(padding: EdgeInsets.all(4)),
          Image.asset('assets/images/tag88.png',width: 200,height: 200,),
          Divider(),
          Text('Getting a value',style:GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13) ,),
          Divider(),
          Image.asset('assets/images/tag89.png',width: 200,height: 200,),
          Divider(),
          Text('Removing a value',style:GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13) ,),
          Divider(),
          Image.asset('assets/images/tag90.png',width: 200,height: 200,),
          Divider(),
          Text('Removing all values',style:GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Image.asset('assets/images/tag91.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Svg_Course()));
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
