import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/Algo_Course/Insertion_sort.dart';

import 'Sort_algo.dart';

class Bubble_sort extends StatefulWidget {
  const Bubble_sort({Key? key}) : super(key: key);

  @override
  _Bubble_sortState createState() => _Bubble_sortState();
}

class _Bubble_sortState extends State<Bubble_sort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bubble Sort',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Sort_algo()));
        },),),
      body: ListView(
        children: [
          Text('Bubble Sort',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Bubble sort is a sorting algorithm that compares two adjacent elements and swaps them until they are not in the intended order.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Working of Bubble sort',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('1. First Iteration (Compare and Swap) \n'
            'Starting from the first index, compare the first and the second elements. \n'
            'If the first element is greater than the second element, they are swapped. \n'
            'Now, compare the second and the third elements. Swap them if they are not in order. \n'
            'The above process goes on until the last element.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/al9.png',width: 300,height: 300,),
          Divider(),
          Text('2. Remaining Iteration \n'
            'The same process goes on for the remaining iterations. \n'
            'After each iteration, the largest element among the unsorted elements is placed at the end.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/al10.png',width: 300,height: 300,),
          Divider(),
          Text('In each iteration, the comparison takes place up to the last unsorted element.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/al11.png',width: 300,height: 300,),
          Divider(),
          Text('The array is sorted when all the unsorted elements are placed at their correct positions.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/al12.png',width: 300,height: 300,),
          Divider(),
          Text('Bubble Sort Algorithm',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Image.asset('assets/images/al13.png',width: 300,height: 300,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Insertion()));
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
