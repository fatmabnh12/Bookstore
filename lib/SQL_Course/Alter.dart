import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/SQL_Course/Auto.dart';
import 'package:pdf/SQL_Course/Views.dart';

class Alter extends StatefulWidget {
  const Alter({Key? key}) : super(key: key);

  @override
  _AlterState createState() => _AlterState();
}

class _AlterState extends State<Alter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alter, Drop, Rename a Table',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,
            color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Auto()));
        },),
      ),
      body: ListView(
        children: [
          Text('Alter Table',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The ALTER TABLE command is used to add, delete, or modify columns in an existing table. \n'
            'You would also use the ALTER TABLE command to add and drop various constraints on an existing table. \n'
            'Consider the following table called People:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s94.png',width: 200,height: 200,),
          Divider(),
          Text('The following SQL code adds a new column named DateOfBirth',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s95.png',width: 200,height: 200,),
          Divider(),
          Text('Result',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/s96.png',width: 200,height: 200,),
          Divider(),
          Text('Drop a table',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The following SQL code demonstrates how to delete the column named DateOfBirth in the People table.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/s97.png',width: 200,height: 200,),
          Divider(),
          Text('Result',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/s98.png',width: 200,height: 200,),
          Divider(),
          Text('To delete the entire table, use the DROP TABLE command:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/s99.png',width: 200,height: 200,),
          Divider(),
          Text('Rename a table',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('The ALTER TABLE command is also used to rename columns:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/s100.png',width: 200,height: 200,),
          Divider(),
          Text('This query will rename the column called FirstName to name.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/s101.png',width: 200,height: 200,),
          Divider(),
          Text('You can rename the entire table using the RENAME command:',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/s102.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Views()));
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
