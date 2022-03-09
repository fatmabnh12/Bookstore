import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter/material.dart';
import 'package:pdf/Algo_Course/Bubble_sort.dart';
import 'package:pdf/Algo_Course/Data_type.dart';

class Sort_algo extends StatefulWidget {
  const Sort_algo({Key? key}) : super(key: key);

  @override
  _Sort_algoState createState() => _Sort_algoState();
}

class _Sort_algoState extends State<Sort_algo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sorting Algorithms',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Data_type()));
        },),),
      body: ListView(
        children: [
          Text('Sorting Algorithms',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('A Sorting Algorithm is used to rearrange a given array or list elements according to a comparison operator on the elements. The comparison operator is used to decide the new order of element in the respective data structure.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          Text('Types of Sorting Algorithms',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Types of Sorting Algorithms:',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
          Divider(),
          Text('1. Quick Sort \n'
            '2. Bubble Sort \n'
            '3. Merge Sort \n'
            '4. Insertion Sort \n'
            '5. Selection Sort',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 13),),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Bubble_sort()));
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
