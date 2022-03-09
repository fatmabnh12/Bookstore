import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Algo_Course/Bubble_sort.dart';
import 'package:pdf/Algo_Course/Selection.dart';

class Insertion extends StatefulWidget {
  const Insertion({Key? key}) : super(key: key);

  @override
  _InsertionState createState() => _InsertionState();
}

class _InsertionState extends State<Insertion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Insertion Sort',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Bubble_sort()));
        },),),
      body: ListView(
        children: [
          Text('Insertion Sort Algorithm',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Insertion sort is a sorting algorithm that places an unsorted element at its suitable place in each iteration.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Working of Insertion Sort',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Suppose we need to sort the following array.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/al14.png',width: 300,height: 300,),
         Divider(),
          Text('The first element in the array is assumed to be sorted. Take the second element and store it separately in key. \n'
            'Compare key with the first element.\n '
              'If the first element is greater than key, then key is placed in front of the first element.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/al15.png',width: 300,height: 300,),
          Divider(),
          Text('Now, the first two elements are sorted. \n'
            'Take the third element and compare it with the elements on the left of it. \n'
              ' Placed it just behind the element smaller than it. \n'
              ' If there is no element smaller than it, then place it at the beginning of the array.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/al16.png',width: 300,height: 300,),
          Divider(),
          Text('Similarly, place every unsorted element at its correct position.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/al17.png',width: 300,height: 300,),
          Divider(),
          Text('Insertion Sort Algorithm',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/al18.png',width: 300,height: 300,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Selection()));
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
