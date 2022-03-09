import 'package:flutter/cupertino.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:like_button/like_button.dart';
import 'package:pdf/Algo_Course/Algo_intro.dart';
import 'package:pdf/ITBasics.dart';

import 'Algo_Course/Bubble_sort.dart';
import 'Algo_Course/Carac.dart';
import 'Algo_Course/Data_def.dart';
import 'Algo_Course/Data_type.dart';
import 'Algo_Course/Insertion_sort.dart';
import 'Algo_Course/Need.dart';
import 'Algo_Course/Selection.dart';
import 'Algo_Course/Sort_algo.dart';

class Algo_Course extends StatefulWidget {
  const Algo_Course({Key? key}) : super(key: key);

  @override
  _Algo_CourseState createState() => _Algo_CourseState();
}

class _Algo_CourseState extends State<Algo_Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Algorithms',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>ItBasics()));
          },),
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
              Padding(padding: EdgeInsets.all(5)),
              SvgPicture.asset('assets/images/algoicon.svg',width: 100,height: 100,),
              Padding(padding: EdgeInsets.all(5)),
              Text('Data Structure is a systematic way to organize data in order to use it efficiently',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),),
            ],
          ),
          ExpansionTile(
              title: Text('Overview',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.data_usage,size: 10,color:Colors.greenAccent,),
              children: [
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("1.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Introduction",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Algo_intro()));
                  },
                ),
                Divider(color: Colors.black54,),
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("2.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Qualities of Good Algorithmes",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Carac()));
                    },
                ),
                Divider(color:Colors.black54),
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("3.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Need for Data Structure",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Need()));
                  },
                ),
              ],
          ),
          ExpansionTile(title: Text('Types of Data',style:GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.system_update_alt,size: 10,color: Colors.greenAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("4.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Data definition",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Data_def()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("5.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Data type",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Data_type()));
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Sorting techniques',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.sort,size: 10,color: Colors.greenAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("6.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Sorting algorithms",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Sort_algo()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("7.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Bubble Sort",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Bubble_sort()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("8.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Insertion Sort",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Insertion()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("9.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Selection Sort",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Selection()));
                },
              ),
            ],
          ),
          ExpansionTile(
              title: Text('Algorithms Cheat-Sheet',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             leading: Icon(Icons.file_copy,size: 10,color: Colors.greenAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("Sorting algorithms",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Cheat-Sheet",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Algo_Cheat()));
                },
              ),
            ],
          )
        ],
      ),

    );
  }
}
class Algo_Cheat extends StatefulWidget {
  const Algo_Cheat({Key? key}) : super(key: key);

  @override
  _Algo_CheatState createState() => _Algo_CheatState();
}

class _Algo_CheatState extends State<Algo_Cheat> {
  bool _isLoading=true;
  late PDFDocument document;

  loadDocument()async{
    document=await PDFDocument.fromAsset('assets/algorithm.pdf');
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
        title: Text('Algorithms',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Algo_Course())); },),
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
