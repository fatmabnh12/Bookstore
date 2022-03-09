import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/PHP_Course/Forms_php.dart';
import 'package:pdf/PHP_Course/Write.dart';

class Getandpost extends StatefulWidget {
  const Getandpost({Key? key}) : super(key: key);

  @override
  _GetandpostState createState() => _GetandpostState();
}

class _GetandpostState extends State<Getandpost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get & Post',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Forms_php()));
        },),
      ),
      body: ListView(
        children: [
          Text('POST',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The two methods for submitting forms are GET and POST. \n'
            'Information sent from a form via the POST method is invisible to others, '
            'since all names and/or values are embedded within the body of the HTTP request. \n'
            'Also, there are no limits on the amount of information to be sent.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('GET',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Information sent via a form using the GET method is visible to everyone (all variable names and values are displayed in the URL). ',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p64.png',width: 200,height: 200,),
          Divider(),
          Text('actionGet.php',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.deepPurple),),
          Divider(),
          Image.asset('assets/images/p65.png',width: 200,height: 200,),
          Divider(),
          Text('Now, the form is submitted to the actionGet.php, and you can see the submitted data in the URL:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/p66.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Write()));
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
