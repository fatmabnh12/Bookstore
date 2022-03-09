import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Algo_Course/Data_def.dart';

import 'Sort_algo.dart';

class Data_type extends StatefulWidget {
  const Data_type({Key? key}) : super(key: key);

  @override
  _Data_typeState createState() => _Data_typeState();
}

class _Data_typeState extends State<Data_type> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Types',style: GoogleFonts.poppins(fontSize: 17,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Data_def()));
        },),),
      body: ListView(
        children: [
          Text('Types of Data Structure',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Basically, data structures are divided into two categories:\n'
            'Linear data structure \n'
            'Non-linear data structure \n'
            'Let`s learn about each type in details',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('Linear data structures',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
          Divider(),
          Text('In linear data structures, the elements are arranged in sequence one after the other. '
              'Since elements are arranged in particular order, they are easy to implement.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('1. Array Data Structure',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
          Divider(),
          Text('In an array, elements in memory are arranged in continuous memory. \n'
              'All the elements of an array are of the same type. \n'
              ' And, the type of elements that can be stored in the form of arrays is determined by the programming language.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Image.asset('assets/images/al4.png',width: 200,height: 200,),
          Divider(),
          Text('2. Stack Data Structure',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
          Divider(),
          Text('In stack data structure, elements are stored in the LIFO principle. '
              'That is, the last element stored in a stack will be removed first.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/al5.png',width: 200,height: 200,),
          Divider(),
          Text('3. Queue Data Structure',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
          Divider(),
          Text('Unlike stack, the queue data structure works in the FIFO principle where first element stored in the queue will be removed first.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/al6.png',width: 200,height: 200,),
          Divider(),
          Text('4. Linked List Data Structure',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
          Divider(),
          Text('In linked list data structure, data elements are connected through a series of nodes.'
              ' And, each node contains the data items and address to the next node.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/al7.png',width: 200,height: 200,),
          Divider(),
          Text('Non linear data structures',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
          Divider(),
          Text('Non-linear data structures are further divided into graph and tree based data structures.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Text('1. Graph Data Structure',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.blueAccent),),
          Divider(),
          Text('In graph data structure, each node is called vertex and each vertex is connected to other vertices through edges.',
            textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Divider(),
          Image.asset('assets/images/al8.png',width: 200,height: 200,),
          Divider(),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Sort_algo()));
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
