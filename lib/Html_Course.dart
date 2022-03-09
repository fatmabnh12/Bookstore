import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/HTML_Course/Api.dart';
import 'package:pdf/HTML_Course/Attribute.dart';
import 'package:pdf/HTML_Course/Audio.dart';
import 'package:pdf/HTML_Course/Colors_sh.dart';
import 'package:pdf/HTML_Course/Comp.dart';
import 'package:pdf/HTML_Course/Elements.dart';
import 'package:pdf/HTML_Course/Format.dart';
import 'package:pdf/HTML_Course/Forms.dart';
import 'package:pdf/HTML_Course/Head.dart';
import 'package:like_button/like_button.dart';
import 'package:pdf/Codeeditor.dart';
import 'package:pdf/HTML_Course/HTML_Page.dart';
import 'package:pdf/HTML_Course/HTML_Struc.dart';
import 'package:pdf/HTML_Course/Lists.dart';
import 'package:pdf/HTML_Course/Model.dart';
import 'package:pdf/HTML_Course/Overview.dart';
import 'package:pdf/HTML_Course/Paragraph.dart';
import 'package:pdf/HTML_Course/Skills.dart';
import 'package:pdf/HTML_Course/Structure.dart';
import 'package:pdf/HTML_Course/Video.dart';

import 'HTML_Course/Bar.dart';
import 'HTML_Course/Blog.dart';
import 'HTML_Course/Image_html.dart';
import 'HTML_Course/Links.dart';
import 'HTML_Course/Svg_course.dart';
import 'HTML_Course/Tables.dart';
import 'Webdev.dart';

class Html_Course extends StatefulWidget {

  @override
  _Html_CourseState createState() => _Html_CourseState();
}

class _Html_CourseState extends State<Html_Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HTML 5',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Webdev())); },),
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
              SvgPicture.asset('assets/images/htmlicon.svg',width: 200,height: 200,),
              Text('This course will teach you how to design a web page using HTML, You can use code editor below for more practise',
                textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 12,color: Colors.black54,),),
            ],
          ),
             Divider(),
             ExpansionTile(
               title: Text('Overview',style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.bold),),
               leading: Icon(Icons.announcement,size: 10,color: Colors.redAccent,),
              children: [
               Divider(color: Colors.grey,),
               ListTile(
                 leading: Icon(Icons.text_snippet),
                 title: Text("1.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("What is HTML ?",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Overview()));
                 },
               ),
               Divider(color: Colors.black26,),
               ListTile(
                 leading: Icon(Icons.text_snippet),
                 title: Text("2.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Basic HTML Document Structure",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>HTML_Structure()));

                 },
               ),
               Divider(color: Colors.black26,),
               ListTile(
                 leading: Icon(Icons.text_snippet),
                 title: Text("3.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Creating Your First HTML page",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>HTML_Page()));

                 },
               ),
               Divider(color: Colors.black26,),
               ListTile(
                 leading: Icon(Icons.text_snippet),
                 title: Text("4.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Creating a Blog",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Blog()));
                 },
                ),
             ],
           ),
             // List 2
          ExpansionTile(
           title: Text("HTML Basics",style:GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.bold ),),
            leading: Icon(Icons.dashboard,size: 10,color: Colors.redAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("6.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Headings,Lines,Comments",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                 Navigator.push(context,MaterialPageRoute(builder:(context)=>Head()));
                 },

              ),
              Divider(color: Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("7.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Paragraphs",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Paragraph()));
                },
              ),
              Divider(color: Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("8.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Text Formatting",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Format()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("11.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Attributes",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Attribute()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("12.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Images",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Image_html()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("13.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Lists",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Lists()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("14.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Blog Project: My Skills",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Skills()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("15.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Tables",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Tables()));

                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("16.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Links",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Links()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("18.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Inline and Block Elements",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Elements()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("19.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Forms",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Forms()));
                },
               ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("21.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("HTML Colors",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Colors_sh()));
                },
              ),
            ],
           ),
          ExpansionTile(
              title: Text('Diving into HTML 5',style:GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.bold )),
               leading: Icon(Icons.explore,size: 10,color: Colors.redAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("22.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Content Models",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Model()));

                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("23.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("HTML 5 Page Structure",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Structure()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("24.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Header,Nav & Footer",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Comp()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("25.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Article,Section & Aside",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Comp()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("26.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Audio Element",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Audio()));

                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("27.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Video Element",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Video()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("28.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Progress Bar Element",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                 Navigator.push(context,MaterialPageRoute(builder:(context)=>Bar()));
                },
              ),

              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("30.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Web Storage API",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Api()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("31.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("SVG",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Svg_Course()));
                },
               ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("32.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("HTML 5 Cheat-Sheet",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Html_Cheat()));
                },
              ),
            ],
          ),
           ExpansionTile(
             title: Text('Code Editor ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),
             ),
             leading: Icon(Icons.code,size: 10,color: Colors.redAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.code),
                title: Text("Tools ",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Code Editor",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>MyEditor()));
                },
              ),
            ],

           )
       ],
      ),

    );
  }
}
class Html_Cheat extends StatefulWidget {
  const Html_Cheat({Key? key}) : super(key: key);

  @override
  _Html_CheatState createState() => _Html_CheatState();
}

class _Html_CheatState extends State<Html_Cheat> {
  bool _isLoading=true;
  late PDFDocument document;

  loadDocument()async{
    document=await PDFDocument.fromAsset('assets/htmlcheat.pdf');
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
        title: Text('HTML 5',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Html_Course())); },),
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

