import 'package:flutter/cupertino.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:pdf/Android_Course/Exp.dart';
import 'package:pdf/Android_Course/Introd.dart';
import 'package:pdf/Android_Course/Option_menu.dart';
import 'package:pdf/Android_Course/Toast.dart';
import 'package:pdf/Mobiledev.dart';

import 'Android_Course/Android_list.dart';
import 'Android_Course/Arch.dart';
import 'Android_Course/Button_android.dart';
import 'Android_Course/Checkbox.dart';
import 'Android_Course/Cycle.dart';
import 'Android_Course/Frag.dart';
import 'Android_Course/Image_sw.dart';
import 'Android_Course/Imp.dart';
import 'Android_Course/Install_and.dart';
import 'Android_Course/Jdk.dart';
import 'Android_Course/Mediaplayer.dart';
import 'Android_Course/RadioButton.dart';
import 'Android_Course/Videoplayer.dart';

class Android_Course extends StatefulWidget {

  @override
  _Android_CourseState createState() => _Android_CourseState();
}
class _Android_CourseState extends State<Android_Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Android',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
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
              SvgPicture.asset('assets/images/androidicon.svg',width: 100,height: 100,),
              Text('If you are familiar with Java And XML,Then this course is '
                  'highly recommended for you. '
                  'Learn Android development from Scratch',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),),
            ],
          ),
          Divider(),
          ExpansionTile(title: Text('Introduction',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.android,size: 10,color: Colors.green,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("1.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("What is Android ?",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Introd()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("2.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Android Architecture",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Arch()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("3.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Install Java Development Kit ",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Jdk()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("4.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Install Android Studio ",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Install_and()));
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Android Widgets',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.android,color: Colors.green,size: 10,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("5.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text(" Working with button",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Button_android()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("6.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Toast",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Toast_course()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("7.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("CheckBox",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Checkbox_intro()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("8.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Radio Button",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Radio_Button()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("9.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("ListView",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Android_list()));

                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("10.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Image Switcher",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Image_sw()));
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Android Menu',style: GoogleFonts.poppins(fontSize: 13,fontWeight:FontWeight.bold),),
            leading: Icon(Icons.android,color: Colors.green,size: 10,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("11.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Option Menu",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Option_menu()));
                },
              ),
            ],
          ),
          ExpansionTile(title: Text('Android Multimedia',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.music_note,color: Colors.green,size: 10,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("12.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Media Player:Audio",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Mediaplayer()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("13.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("VideoView: Video",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Videoplayer()));
                },
              ),
            ],
          ),
          ExpansionTile(title: Text('Activity & Intents',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.local_activity,color: Colors.green,size: 10,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("14.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Activity Life Cycle",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Cycle()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("15.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Implicit Intent",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Imp()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("16.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Explicit Intent",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Exp()));
                },
              ),

            ],
          ),
          ExpansionTile(
              title: Text('Android Fragments',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.android,size: 10,color: Colors.green,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("17.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Fragments",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Frag()));
                },
              ),
            ],
          ),
          ExpansionTile(title: Text('Android Cheat-Sheet',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.file_copy,color: Colors.green,size: 10,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("Cheat-Sheet",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Android",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Android_CheatSheet()));
                },
              ),
            ],
          )
        ],
      ),

    );
  }
}
class Android_CheatSheet extends StatefulWidget {

  @override
  _Android_CheatSheetState createState() => _Android_CheatSheetState();
}

class _Android_CheatSheetState extends State<Android_CheatSheet> {
  bool _isLoading=true;
  late PDFDocument document;

  loadDocument()async{
    document=await PDFDocument.fromAsset('assets/androidcheatsheet.pdf');
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
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Android_Course())); },),
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

