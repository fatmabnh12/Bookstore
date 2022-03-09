import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';
import 'package:pdf/Tools/Linx.dart';
import 'package:pdf/Tools/Use.dart';

import 'ITBasics.dart';
import 'Tools/Adobe.dart';
import 'Tools/Atom.dart';
import 'Tools/Codenvy.dart';
import 'Tools/Embold.dart';
import 'Tools/Github.dart';
import 'Tools/Netbeans.dart';
import 'Tools/Node.dart';
import 'Tools/Tool.dart';
import 'Tools/UML.dart';
import 'Tools/quixy.dart';

class Tools_Course extends StatefulWidget {
  const Tools_Course({Key? key}) : super(key: key);

  @override
  _Tools_CourseState createState() => _Tools_CourseState();
}

class _Tools_CourseState extends State<Tools_Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Programmer tools',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
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
              Padding(padding: EdgeInsets.all(4)),
              SvgPicture.asset('assets/images/dataicon.svg',width: 100,height: 100,),
              Text('This course will provide you with software tools developers use '
                  'for developing the latest and modern rich-projects',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),),
            ],
          ),
          Divider(),
          ExpansionTile(
              title:Text('Overview',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.remove_red_eye_outlined,color: Colors.blueGrey,size: 10,),
            children: [
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("1.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Introduction",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Use()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("2.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Use of software programming tools",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Tool()));
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text('List of software development tools',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.settings_applications,size: 10,color: Colors.blueGrey,),
            children: [
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("1) Quixy",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Quixy()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("2) Linx",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Linx()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("3) Embold",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Embold()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("4) Atom",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Atom()));
                },
              ),

              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("5) GitHub",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Github()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("6) Netbeans",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Netbeans()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("7) Node.js",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Nodejs()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("8) Codenvy",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Codenvy()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("9) Adobe XD",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Adobe()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("10) StarUML",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Uml()));
                },
              ),
            ],
          ),
        ],
      ),


    );
  }
}
