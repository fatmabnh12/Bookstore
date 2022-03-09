import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:like_button/like_button.dart';
import 'package:pdf/SQL_Course/Alter.dart';
import 'package:pdf/SQL_Course/Between.dart';
import 'package:pdf/SQL_Course/Intro_db.dart';
import 'package:pdf/SQL_Course/Like.dart';
import 'package:pdf/SQL_Course/Syntax_rules.dart';
import 'package:pdf/SQL_Course/Views.dart';
import 'SQL_Course/Auto.dart';
import 'SQL_Course/Concat.dart';
import 'SQL_Course/Create.dart';
import 'SQL_Course/Filter.dart';
import 'SQL_Course/In.dart';
import 'SQL_Course/Insert.dart';
import 'SQL_Course/Join_table.dart';
import 'SQL_Course/Limit.dart';
import 'SQL_Course/Multipe.dart';
import 'SQL_Course/Select.dart';
import 'SQL_Course/Subqueries.dart';
import 'SQL_Course/Types.dart';
import 'SQL_Course/Union.dart';
import 'SQL_Course/Update.dart';
import 'SQL_Course/Upper.dart';
import 'SQL_Course/Where.dart';
import 'Webdev.dart';
import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';

class Sql_Course extends StatefulWidget {

  @override
  _Sql_CourseState createState() => _Sql_CourseState();
}

class _Sql_CourseState extends State<Sql_Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SQL',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
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
               SvgPicture.asset('assets/images/sqlicon.svg',width: 100,height: 100,),
               Text('This course covers an array of SQL-related topics'
                   'Such as the CRUD operations & many more.',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,color: Colors.black54,fontWeight: FontWeight.w600),)
             ],
           ),
            Divider(),
           ExpansionTile(
             title: Text('Basic concepts',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             leading: Icon(Icons.vpn_key,color: Colors.pinkAccent,size: 10,),
             children: [
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("1.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Introduction to Databases",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Intro_db()));
                 },
               ),
               Divider(color:Colors.black54),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("2.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("SQL Statement: SELECT",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Select()));
                 },
               ),
               Divider(color:Colors.black54),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("3.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("SQL Syntax Rules",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Syntax_rules()));
                 },
               ),
               Divider(color:Colors.black54),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("4.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Selecting multiple columns",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Multipe()));
                 },
               ),
                Divider(color:Colors.black54),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("5.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("DISTINCT & LIMIT ",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Limit()));
                 },
               ),
             ],
           ),
            ExpansionTile(
                title: Text('Filtering,Functions,Sub-queries',style:GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
                leading: Icon(Icons.settings,size: 10,color: Colors.pinkAccent,),
               children: [
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("6.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("The Where statement",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Where()));
                   },
                 ),
                 Divider(color: Colors.black54,),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("7.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("The Between operator",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Between()));
                   },
                 ),
                  Divider(color:Colors.black54),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("8.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Filtering with AND, OR",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Filter()));
                   },
                 ),
                 Divider(color:Colors.black54),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("11.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("IN,NOT IN Statement ",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>In()));
                   },
                 ),
                 Divider(color: Colors.black54,),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("12.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("The CONCAT Statement ",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Concat()));
                   },
                 ),
                 Divider(color:Colors.black54),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("13.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Functions",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Upper()));
                   },
                 ),
                 Divider(color:Colors.black54),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("14.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Sub-queries",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Subqueries()));
                   },
                 ),
                 Divider(color:Colors.black54),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("15.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("LIKE And MIN",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Like()));

                   },
                 ),
               ],
            ),
            ExpansionTile(title: Text('JOIN,Table Operations',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.table_chart,size: 10,color: Colors.pinkAccent,),
              children: [
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("16.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Joining tables",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Join_table()));
                  },
                ),
                 Divider(color: Colors.black54,),
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("17.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Types of join",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Types()));
                  },
                 ),
                Divider(color: Colors.black54,),
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("18.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Union",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Union()));
                  },
                ),
                 Divider(color: Colors.black54,),
                  ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("19.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("The INSERT Statement",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Insert()));
                  },
                ),
                  Divider(color: Colors.black54,),
                  ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("20.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("UPDATE & DELETE",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Update()));
                  },
                  ),
                 Divider(color:Colors.black54),
                  ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("21.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Creating a table",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Create()));
                  },
                ),
                Divider(color: Colors.black54,),
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("23.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("NOT_NULL and AUTO_INCREMENT",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Auto()));
                  },
                ),
                Divider(color: Colors.black54,),
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("24.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Alter,Drop,Rename a table",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Alter()));
                  },
                ),
                Divider(color: Colors.black54,),
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("25.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Views",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Views()));
                  },
                ),
              ],
            ),
            ExpansionTile(
                title: Text('SQL Cheat-Sheet',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.file_copy,size: 10,color: Colors.pinkAccent,),
              children: [
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("Cheat-Sheet",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("SQL",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Sql_CheetSheat()));
                  },
                ),
              ],

            )
         ],
      ),

    );
  }
}
 class Sql_CheetSheat extends StatefulWidget {
 
   @override
   _Sql_CheetSheatState createState() => _Sql_CheetSheatState();
 }
 
 class _Sql_CheetSheatState extends State<Sql_CheetSheat> {
   bool _isLoading=true;
   late PDFDocument document;

   loadDocument()async{
     document=await PDFDocument.fromAsset('assets/SQL file.pdf');
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
         title: Text('SQL',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
         leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
           Navigator.push(context,MaterialPageRoute(builder:(context)=>Sql_Course())); },),
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
 