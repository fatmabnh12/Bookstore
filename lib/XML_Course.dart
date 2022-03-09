import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:like_button/like_button.dart';
import 'Mobiledev.dart';

class XML_Course extends StatefulWidget {
  const XML_Course({Key? key}) : super(key: key);

  @override
  _XML_CourseState createState() => _XML_CourseState();
}

class _XML_CourseState extends State<XML_Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('XML for Android',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
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
              SvgPicture.asset('assets/images/xmlicon.svg',width: 100,height: 100,),
              Text('In Android, we use XML for designing our layouts'
                  'because XML is lightweight language so it simply make our UI heavy',
                textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),),],
          ),
          Divider(),
          ExpansionTile(
              title: Text('XML Cheat-Sheet',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.file_copy,size: 10,color: Colors.deepOrangeAccent),
              children: [
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("Cheat sheet",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Layout",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>XML_CheatSheet()));
                  },
                ),
              ],
          )

        ],
      ),
    );
  }
}
class XML_CheatSheet extends StatefulWidget {
  const XML_CheatSheet({Key? key}) : super(key: key);

  @override
  _XML_CheatSheetState createState() => _XML_CheatSheetState();
}

class _XML_CheatSheetState extends State<XML_CheatSheet> {
  bool _isLoading=true;
  late PDFDocument document;

  loadDocument()async{
    document=await PDFDocument.fromAsset('assets/layout.pdf');
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
        title: Text('XML',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>XML_Course())); },),
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
