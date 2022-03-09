import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:pdf/CSS_Course/Background_color.dart';
import 'package:pdf/CSS_Course/Background_image.dart';
import 'package:pdf/CSS_Course/Background_repeat.dart';
import 'package:pdf/CSS_Course/Border_course.dart';
import 'package:pdf/CSS_Course/Box_model.dart';
import 'package:pdf/CSS_Course/Dec.dart';
import 'package:pdf/CSS_Course/Definition.dart';
import 'package:pdf/CSS_Course/Inline.dart';
import 'package:pdf/CSS_Course/Links.dart';
import 'package:pdf/CSS_Course/Rules.dart';
import 'package:pdf/CSS_Course/Shadow.dart';
import 'package:pdf/CSS_Course/Size.dart';
import 'package:pdf/CSS_Course/Style.dart';
import 'package:pdf/CSS_Course/Und.dart';
import 'package:pdf/CSS_Course/Vertc.dart';
import 'package:pdf/CSS_Course/Weight.dart';
import 'package:pdf/CSS_Course/Widthandheight.dart';
import 'CSS_Course/Aligntext.dart';
import 'CSS_Course/Color.dart';
import 'CSS_Course/Comments.dart';
import 'CSS_Course/Family.dart';
import 'Codeeditor.dart';
import 'Webdev.dart';
class Css_Course extends StatefulWidget {

  @override
  _Css_CourseState createState() => _Css_CourseState();
}

class _Css_CourseState extends State<Css_Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CSS 3',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
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
      body:ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(8)),
              SvgPicture.asset('assets/images/cssicon.svg',width: 50,height: 50,),
              Padding(padding: EdgeInsets.all(8)),
              Text('Our CSS course will teach you how to control the style & layout of websites, '
                  'You can use the code editor below for more practise',
                textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),),
              ]
          ),
          Divider(),
          ExpansionTile(title: Text('Basics',style:GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.sort_by_alpha,color: Colors.lightBlue,size: 10,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("1.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("What is CSS ?",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Definition()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("2.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Inline,Embedded & External CSS ",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Inline()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("3.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("CSS Rules and selectors",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Rules()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("4.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("CSS comments",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Comments()));
                },
              ),
            ],
          ),
          ExpansionTile(title: Text('Working with Text',style:GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.sort_by_alpha,color: Colors.lightBlue,size: 10,),
            children: [
              ListTile(
                leading: Icon(Icons.design_services),
                title: Text("5.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("font-family",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Family()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.design_services),
                title: Text("6.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("font-size",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Size()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.design_services),
                title: Text("7.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("font-style",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Style()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.design_services),
                title: Text("8.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("font-weight",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Weight()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.design_services),
                title: Text("10.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("color",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Colorhtml()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.design_services),
                title: Text("11.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Aligning text Horizontally",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Aligntext()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.design_services),
                title: Text("12.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Aligning text Vertically",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Vertc()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.design_services),
                title: Text("13.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("text-decoration",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Dec()));
                },
              ),
              Divider(color:Colors.black26),
              ListTile(
                leading: Icon(Icons.design_services),
                title: Text("15.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("text-shadow",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Shadow()));
                },
              ),
              ],
          ),
           ExpansionTile(title: Text('Proprieties',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             leading: Icon(Icons.pages,size: 10,color: Colors.lightBlue,),
             children: [
               ListTile(
                   leading: Icon(Icons.design_services),
                   title: Text("19.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Introducing the Box Model",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Box_model()));
                   }),
                 Divider(color:Colors.black26),
                 ListTile(
                   leading: Icon(Icons.design_services),
                   title: Text("20.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Understanding the Box Model",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Und()));
                   }
                   ),
                  Divider(color:Colors.black26),
                  ListTile(
                   leading: Icon(Icons.design_services),
                   title: Text("21.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Borders",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Border_course()));
                   }
                   ),
                  Divider(color:Colors.black26),
                  ListTile(
                   leading: Icon(Icons.design_services),
                   title: Text("22.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Width and height",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Widthandheight()));
                   }
                   ),
                  Divider(color:Colors.black26),
                  ListTile(
                   leading: Icon(Icons.design_services),
                   title: Text("23.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("background-color",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Background_color()));

                   }
                 ),
               Divider(color:Colors.black26),
               ListTile(
                   leading: Icon(Icons.design_services),
                   title: Text("24.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("background-image",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Background_image()));

                   }
               ),
               Divider(color:Colors.black26),
               ListTile(
                   leading: Icon(Icons.design_services),
                   title: Text("25.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("background-repeat",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Background_repeat()));

                   }
               ),
               Divider(color:Colors.black26),
               ListTile(
                   leading: Icon(Icons.design_services),
                   title: Text("26.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Styling the links ",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Links()));

                   }
               ),
               ],
           ),
          ExpansionTile(
            title: Text('Complete CSS Cheat-Sheet ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.code,size: 10,color: Colors.lightBlue,),
            children: [
              ListTile(
                leading: Icon(Icons.code),
                title: Text("CSS ",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Cheat-Sheet",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>CSS_Cheat()));
                },
              ),
            ],

          ),

           ExpansionTile(
            title: Text('Code Editor ',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.code,size: 10,color: Colors.lightBlue,),
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
      )

    );
  }
}

class CSS_Cheat extends StatefulWidget {
  const CSS_Cheat({Key? key}) : super(key: key);

  @override
  _CSS_CheatState createState() => _CSS_CheatState();
}

class _CSS_CheatState extends State<CSS_Cheat> {
  bool _isLoading=true;
  late PDFDocument document;

  loadDocument()async{
    document=await PDFDocument.fromAsset('assets/csscheat.pdf');
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
        title: Text('CSS 3 Cheat-Sheet',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Css_Course())); },),
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

