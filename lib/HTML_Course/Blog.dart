import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/HTML_Course/HTML_Page.dart';
import 'package:pdf/HTML_Course/Head.dart';

class Blog extends StatefulWidget {
  const Blog({Key? key}) : super(key: key);

  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creating a blog',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>HTML_Page())); },),
      ),
      body: ListView(
        children: [
          Text('Creating a Blog ',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold),),
          Divider(),
          Text('Through out this course, we will help you practice and create your own unique blog project,\n'
              ' so you will retain what you have learned and be able to put it to use. \n'
              'Just keep going and follow the instructions in the TASK section. \n'
          'This is what your finished blog page will look like. \n',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w600),),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('TASK: Tap Try It Yourself in your code editor to see the code and its output.'
            ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
          Image.asset('assets/images/tag8.png',width: 100,height: 100,),
          Divider(color: Colors.black54,),
          Container(
            color: Colors.white,
            alignment: Alignment.center,
            child: Text('TASK: \n'
                '1) Write the code \n'
                '2) On the top header, change the name to your own name \n'
                 '3) Change the page title, Remember the page title is located inside the <title> tag \n'
                 'in the <head> of the page'
              ,textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontSize: 12,color: Colors.redAccent,fontWeight: FontWeight.w800),),),
            Divider(color: Colors.black54,),
          Padding(padding: EdgeInsets.all(4)),
          ElevatedButton.icon(
            onPressed:(){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Head()));},
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
