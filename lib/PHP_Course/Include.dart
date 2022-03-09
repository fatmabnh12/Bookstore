import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/PHP_Course/Def_func.dart';
import 'package:pdf/PHP_Course/Switch_stat.dart';
class Include extends StatefulWidget {
  const Include({Key? key}) : super(key: key);

  @override
  _IncludeState createState() => _IncludeState();
}

class _IncludeState extends State<Include> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Include & require',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Switch_stat()));
        },),
      ),
      body: ListView(
        children: [
          Text('Include',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The include and require statements allow for the insertion of the content of one PHP file into another PHP file, '
              'before the server executes it. \n'
            'Including files saves quite a bit of work. \n'
              'You can create a standard header, footer, or menu file for all of your web pages. \n'
              ' Then, when the header is requiring updating, you can update the header include file only.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Assume that we have a standard header file called header.php.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),),
          Divider(),
          Image.asset('assets/images/p52.png',width: 200,height: 200,),
          Divider(),
          Text('Use the include statement to include the header file in a page.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),),
          Divider(),
          Image.asset('assets/images/p53.png',width: 200,height: 200,),
          Divider(),
          Text('Using this approach, we have the ability to include the same header.php file into multiple pages.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.red),),
          Divider(),
          Image.asset('assets/images/p54.png',width: 200,height: 200,),
          Divider(),
          Text('Result',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.black),),
          Divider(),
          Image.asset('assets/images/p56.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Def_func()));
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
