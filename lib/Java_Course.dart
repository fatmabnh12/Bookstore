import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:like_button/like_button.dart';
import 'package:pdf/Mobiledev.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

class Java_Course extends StatefulWidget {

  @override
  _Java_CourseState createState() => _Java_CourseState();
}

class _Java_CourseState extends State<Java_Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Java',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Mobiledev())); },),
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
              SvgPicture.asset('assets/images/java.svg',width: 100,height: 100,),
              Divider(),
              Text('With our interactive Java Cheat-Sheet \n'
                  'You will learn the essentials for Android Development ',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),),
            ],
          ),
          Divider(),
          ExpansionTile(title: Text('Java POO Cheat Sheet',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.file_copy,size: 10,color: Colors.orangeAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("Cheat-Sheet",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Java POO",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>POO_CheatSheet()));
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
class POO_CheatSheet extends StatefulWidget {

  @override
  _POO_CheatSheetState createState() => _POO_CheatSheetState();
}

class _POO_CheatSheetState extends State<POO_CheatSheet> {
  bool _isLoading=true;
  late PDFDocument document;

  loadDocument()async{
    document=await PDFDocument.fromAsset('assets/JavaPOO.pdf');
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
        title: Text('Android',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Java_Course())); },),
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
