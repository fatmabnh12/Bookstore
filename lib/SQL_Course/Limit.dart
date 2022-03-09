import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/SQL_Course/Multipe.dart';
import 'package:pdf/SQL_Course/Where.dart';

class Limit extends StatefulWidget {
  const Limit({Key? key}) : super(key: key);

  @override
  _LimitState createState() => _LimitState();
}

class _LimitState extends State<Limit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DISTINCT and LIMIT',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Multipe()));
        },),
      ),
      body: ListView(
        children: [
          Text('DISTINCT & LIMIT',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The SQL DISTINCT keyword is used in conjunction with SELECT to eliminate all duplicate records and return only unique ones.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s17.png',width: 200,height: 200,),
          Divider(),
          Text('See the customers table below:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/s18.png',width: 200,height: 200,),
          Divider(),
          Text('The following SQL statement selects only distinct values from the City column:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s19.png',width: 200,height: 200,),
          Divider(),
          Text('Result',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/s20.png',width: 200,height: 200,),
          Divider(),
          Text('The LIMIT Keyword',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('By default, all results that satisfy the conditions specified in the SQL statement are returned. \n'
              ' However, sometimes we need to retrieve just a subset of records. In MySQL, this is accomplished by using the LIMIT keyword.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('The syntax ',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/s21.png',width: 200,height: 200,),
          Divider(),
          Text('For example, we can retrieve the first five records from the customers table.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s22.png',width: 200,height: 200,),
          Divider(),
          Text('This would produce the following result:',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/s23.png',width: 200,height: 200,),
          Divider(),
          Text('You can also pick up a set of records from a particular offset.\n'
            'In the following example, we pick up four records, starting from the third position:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s24.png',width: 200,height: 200,),
          Divider(),
          Text('This would produce the following result:',
            textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/s25.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Where()));
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
