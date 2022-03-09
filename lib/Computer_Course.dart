import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:like_button/like_button.dart';
import 'package:pdf/Computer_course/Det.dart';
import 'package:pdf/Computer_course/Introduc.dart';
import 'package:pdf/Computer_course/Lang.dart';
import 'package:pdf/Computer_course/Log.dart';
import 'package:pdf/Computer_course/Mem.dart';
import 'package:pdf/Computer_course/Pat.dart';
import 'package:pdf/Computer_course/Think.dart';
import 'package:pdf/ITBasics.dart';
import 'package:pdf/Computer_course/Work.dart';
import 'package:pdf/Computer_course/Top.dart';
import 'package:pdf/Computer_course/Keys.dart';
import 'package:pdf/Computer_course/Low_level.dart';
import 'package:pdf/Computer_course/High_level.dart';
import 'package:pdf/Computer_course/Basic_op.dart';

import 'Computer_course/Learn.dart';
import 'Computer_course/Self.dart';

class Computer_course extends StatefulWidget {
  const Computer_course({Key? key}) : super(key: key);

  @override
  _Computer_courseState createState() => _Computer_courseState();
}

class _Computer_courseState extends State<Computer_course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Computer programming',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>ItBasics())); },),
        actions: [
          LikeButton(
              circleColor: CircleColor(start: Color(0xFFF44336),end: Color(0xFFF44336)),
              likeBuilder: (bool isLiked){
                return Icon(
                  Icons.favorite,
                  size: 30,
                  color: isLiked ?Colors.red : Colors.grey,
                );
              },
              likeCount: 1,
              countBuilder: (int ?count, bool isLiked, String text){
                var color= isLiked? Colors.red:Colors.grey;
                Widget result;
                if(count==0){
                  result=Text("Added to wishlist");
                }else{
                  result=Text(text,);
                  return result;
                }
              }
          ),
        ],
      ),
       body: ListView(
         children: [
           Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Padding(padding: EdgeInsets.all(3)),
               SvgPicture.asset('assets/images/compicon.svg',width: 100,height: 100,),
               Text('Get ready to dive deep into the world of Computer programming '
                   ' and know all about the basics of programming in detail',textAlign:TextAlign.center,
                 style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),),
             ],
           ),
           Divider(),
           ExpansionTile(
               title: Text('What is Computer programming ?',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
               leading: Icon(Icons.computer,size: 10,color: Colors.brown,),
             children: [
               ListTile(
                 leading: Icon(Icons.text_snippet),
                 title: Text("1.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Introduction",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Introduc()));
                 },
               ),
               Divider(color: Colors.black54,),
               ListTile(
                 leading: Icon(Icons.text_snippet),
                 title: Text("2.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("How do computers work ?",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Work()));
                 },
               ),
             ],
           ),
           ExpansionTile(
             title: Text('Basic programming concepts',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             leading: Icon(Icons.confirmation_num,size: 10,color: Colors.brown,),
             children: [
               ListTile(
                 leading: Icon(Icons.text_snippet),
                 title: Text("3.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Keys of knowledge",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Keys()));
                 },
               ),
               Divider(color: Colors.black54,),
               ListTile(
                 leading: Icon(Icons.text_snippet),
                 title: Text("4.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Top Computer programming languages",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Top()));
                 },
               ),
             ],
           ),
           ExpansionTile(
               title: Text('Types of computer programming languages',
                 style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
               leading: Icon(Icons.code,size: 10,color: Colors.brown,),
              children: [
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("5.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Low-level language",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Low_level()));

                  },
                ),
                Divider(color: Colors.black54,),
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("6.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("High level language",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>High_level()));
                  },
                ),
              ],
           ),
           ExpansionTile(
               title: Text('Basics of a programming environment',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
               leading: Icon(Icons.remove_red_eye,size: 10,color: Colors.brown,),
             children: [
               ListTile(
                 leading: Icon(Icons.text_snippet),
                 title: Text("7.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Basic operations",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Basic_op()));
                 },
               ),

             ],
           ),
           ExpansionTile(
             title:Text('Necessary requisites/skills required for programming',
               style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
               leading: Icon(Icons.skip_next,size: 10,color: Colors.brown,),
              children: [
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("12.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Self reliance",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Self()));
                  },
                ),
                Divider(color: Colors.black54,),
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("13.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Language",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Lang()));
                  },
                ),
                Divider(color: Colors.black54,),
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("14.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Logic",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Log()));
                  },
                ),
                Divider(color: Colors.black54,),
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("15.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Attention to detail",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Det()));
                  },
                ),
                Divider(color: Colors.black54,),
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("16.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Abstract thinking",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Think()));
                  },
                ),
                Divider(color: Colors.black54,),
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("17.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Patience",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Pat()));
                  },
                ),
                Divider(color: Colors.black54,),
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("18.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Strong memory",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Mem()));
                  },
                ),
              ],
           ),
            ExpansionTile(title: Text('Tips for beginners',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.star,color: Colors.brown,size: 10,),
              children: [
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("19.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("How to start learning programming language ?",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Learn()));
                  },
                ),
                Divider(color: Colors.black54,),
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("20.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Util guide ",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Comp_book()));
                  },
                ),
              ],
            )

         ],
       ),


    );
  }
}
class Comp_book extends StatefulWidget {
  const Comp_book({Key? key}) : super(key: key);

  @override
  _Comp_bookState createState() => _Comp_bookState();
}

class _Comp_bookState extends State<Comp_book> {
  bool _isLoading=true;
  late PDFDocument document;

  loadDocument()async{
    document=await PDFDocument.fromAsset('assets/soft.pdf');
    setState(() {
      _isLoading=false;
    });
  }
  @override
  void initState() {
    super.initState();
    loadDocument();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: Text('Intro to computer programming',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Computer_course())); },),
      ),
      body:
      Center(
        child: _isLoading?
        Center(
            child: CircularProgressIndicator()):PDFViewer(document: document,),
      ),

    );
  }
}
