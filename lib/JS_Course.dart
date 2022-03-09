import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:like_button/like_button.dart';
import 'package:pdf/CSS_Course/Comments.dart';
import 'package:pdf/JS_Course/Breakandcontinue.dart';
import 'package:pdf/JS_Course/Comp.dart';
import 'package:pdf/JS_Course/Data_type.dart';
import 'package:pdf/JS_Course/Else_stat.dart';
import 'package:pdf/JS_Course/First.dart';
import 'package:pdf/JS_Course/If_stat.dart';
import 'package:pdf/JS_Course/Intro.dart';
import 'package:pdf/JS_Course/Intro_object.dart';
import 'package:pdf/JS_Course/Logical.dart';
import 'package:pdf/JS_Course/Math_operator.dart';
import 'package:pdf/JS_Course/String_op.dart';
import 'package:pdf/JS_Course/Switch_case.dart';
import 'JS_Course/Alerts.dart';
import 'JS_Course/Assign.dart';
import 'JS_Course/Boucle.dart';
import 'JS_Course/Creation.dart';
import 'JS_Course/Do_loop.dart';
import 'JS_Course/Form_Validation.dart';
import 'JS_Course/Handling_elements.dart';
import 'JS_Course/Image_Slider.dart';
import 'JS_Course/Param.dart';
import 'JS_Course/Return_stat.dart';
import 'JS_Course/User_func.dart';
import 'JS_Course/Variables.dart';
import 'JS_Course/While_loop.dart';
import 'JS_Course/Obj_Course.dart';
import 'JS_Course/JS_Arrays.dart';
import 'JS_Course/Date_Object.dart';
import 'JS_Course/Add_method.dart';
import 'JS_Course/Selecting_elements.dart';
import 'JS_Course/Assoc.dart';
import 'JS_Course/DOM_Course.dart';
import 'Webdev.dart';
import 'package:pdf/JS_Course/Math_Object.dart';
import 'package:pdf/JS_Course/Changing.dart';
class JS_Course extends StatefulWidget {

  @override
  _JS_CourseState createState() => _JS_CourseState();
}

class _JS_CourseState extends State<JS_Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JavaScript',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Webdev()));
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
              Padding(padding: EdgeInsets.all(5),),
              SvgPicture.asset('assets/images/jsicon.svg',width: 80,height: 80,),
              Text('Learn all the basic features of Javascript, including making your website more interactive'
                  'changing website content,validating forms, and so much more',textAlign: TextAlign.center,
                style:GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54) ),
            ],
          ),
          Divider(),
          ExpansionTile(title: Text('Overview',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.animation,color: Colors.amber,size: 10,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("1.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Introduction",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Intro()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("2.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Write your first Javascript",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>First()));

                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("3.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Variables",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Variables()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("4.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Comments",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Comments()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("5.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Data types",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Data_type()));
                },
              ),
            ],
          ),
           ExpansionTile(
               title: Text('Basic concepts',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
               leading: Icon(Icons.cast_for_education,color: Colors.amber,size: 10,),
               children: [
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("6.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Math Operators",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Math_operator()));
                   },
                 ),
                 Divider(color:Colors.black54),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("7.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Assignment Operators",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Assign()));
                   },
                 ),
                 Divider(color:Colors.black54),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("8.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Comparison Operators",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Comp()));
                   },
                 ),
                 Divider(color: Colors.black54,),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("9.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Logical or Boolean Operators",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Logical()));
                   },
                 ),
                 Divider(color: Colors.black54,),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("10.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("String Operators",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>String_op()));
                   },
                 ),
               ],
           ),
          ExpansionTile(
            title: Text('Conditions and Loops',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.repeat,color: Colors.amber,size: 10,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("11.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("The If Statement",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>If_stat()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("12.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("The else Statement",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Else_stat()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("14.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("The switch Statement",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Switch_case()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("15.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("The For Loop",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Boucle()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("16.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("The While Loop",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>While_loop()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("17.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("The Do .. While Loop",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Do_loop()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("18.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Break and Continue",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Breakandcontinue()));
                },
               ),
            ],
            ),
           ExpansionTile(
             title: Text('Functions',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             leading: Icon(Icons.functions,size: 10,color: Colors.amber,),
             children: [
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("20.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("User-Defined Functions",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>User_func()));

                 },
               ),
               Divider(color:Colors.black54),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("21.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Function Parameters",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Param()));
                 },
               ),
               Divider(color:Colors.black54),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("23.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("The return statement",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Return_stat()));
                 },
               ),
               Divider(color:Colors.black54),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("24.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Alert,Prompt,Confirm",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Alerts()));
                 },
               ),
             ],
           ),
            ExpansionTile(
              title: Text('Objects',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.emoji_objects,size: 10,color: Colors.amber,),
              children: [
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("25.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Introducing Objects",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Intro_object()));
                  },
                ),
                Divider(color:Colors.black54),
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("26.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Creating your own objects",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Creation()));
                  },
                ),
                Divider(color:Colors.black54),
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("27.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Object initialization",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Obj_Course()));
                  },
                ),
                Divider(color:Colors.black54),
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("29.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Adding methods",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Add_method()));
                  },
                ),
              ],
            ),
           ExpansionTile(
             title: Text('Core objects',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             leading: Icon(Icons.view_array,size: 10,color: Colors.amber,),
             children: [
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("30.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Arrays",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>JS_Arrays()));
                 },
               ),
               Divider(color:Colors.black54),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("32.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Associative Arrays",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Assoc()));
                 },
               ),
               Divider(color:Colors.amber),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("33.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("The Math Object",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Math_Object()));
                 },
               ),
               Divider(color:Colors.amber),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("34.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("The Date Object",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Date_Object()));
                 },),
             ],
           ),
             ExpansionTile(title: Text('DOM & Events',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
               leading: Icon(Icons.lightbulb,size: 10,color: Colors.amber,),
               children: [
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("35.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("What is DOM ?",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>DOM_Course()));
                   },),
                  Divider(color:Colors.black54),
                  ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("36.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Selecting Elements",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Handling_elements()));
                   },),
                 Divider(color:Colors.black54),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("37.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Changing Elements",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Changing()));

                   },),
                 Divider(color: Colors.black54,),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("39.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Handling Events",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Handle_elem()));
                   },),
                  Divider(color:Colors.black54),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("40.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Creating an image slider",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Image_Slider()));

                   },),
                 Divider(color:Colors.black54),
                 ListTile(
                   leading: Icon(Icons.sort),
                   title: Text("41.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Form Validation",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Form_Validation()));
                   },),
               ],
             ),
            ExpansionTile(title: Text('Complete Javascript Cheat-Sheet',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             leading: Icon(Icons.assignment_outlined,size: 10,color: Colors.amber,),
              children: [
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("Cheat-Sheet",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("JavaScript",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Jscheat()));
                  },),
              ],
            )



        ],

      ),

    );
  }
}

class Jscheat extends StatefulWidget {

  @override
  _JscheatState createState() => _JscheatState();
}

class _JscheatState extends State<Jscheat> {
  bool _isLoading=true;
  late PDFDocument document;

  loadDocument()async{
    document=await PDFDocument.fromAsset('assets/jscheat.pdf');
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
        title: Text('JavaScript',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>JS_Course())); },),
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


