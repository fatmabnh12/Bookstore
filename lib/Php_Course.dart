import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:like_button/like_button.dart';
import 'package:pdf/PHP_Course/Assign.dart';
import 'package:pdf/PHP_Course/Data_types.dart';
import 'package:pdf/PHP_Course/Multi.dart';
import 'package:pdf/PHP_Course/Operator.dart';
import 'package:pdf/PHP_Course/Read.dart';
import 'JS_Course/Variables.dart';
import 'PHP_Course/Append.dart';
import 'PHP_Course/Assoc_array.dart';
import 'PHP_Course/Classesandobj.dart';
import 'PHP_Course/Comment.dart';
import 'PHP_Course/Compare.dart';
import 'PHP_Course/Constants.dart';
import 'PHP_Course/Constr.dart';
import 'PHP_Course/Def_func.dart';
import 'PHP_Course/Do_loop.dart';
import 'PHP_Course/Else_if.dart';
import 'PHP_Course/For_loop.dart';
import 'PHP_Course/Foreach_loop.dart';
import 'PHP_Course/Forms_php.dart';
import 'PHP_Course/Func_param.dart';
import 'PHP_Course/If_Stat.dart';
import 'PHP_Course/Include.dart';
import 'PHP_Course/Logical_Op.dart';
import 'PHP_Course/Num_arrays.dart';
import 'PHP_Course/Return_stat.dart';
import 'PHP_Course/Switch_stat.dart';
import 'PHP_Course/While_loop.dart';
import 'PHP_Course/Write.dart';
import 'Webdev.dart';
import 'package:pdf/PHP_Course/Intro.dart';
import 'package:pdf/PHP_Course/Echo.dart';
import 'package:pdf/PHP_Course/Tags.dart';



class Php_Course extends StatefulWidget {

  @override
  _Php_CourseState createState() => _Php_CourseState();
}

class _Php_CourseState extends State<Php_Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PHP',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
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
              SvgPicture.asset('assets/images/phpicon.svg',width: 100,height: 100,),
              Text('PHP enables you to create dynamic web pages,develop websites'
                  'and generate dynamic content',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),),
            ],
          ),
          Divider(),
          ExpansionTile(
            title:Text('Basic Syntax',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.explore,size: 10,color:Colors.deepPurpleAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("1.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Introduction",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Intro()));

                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("2.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("PHP tags",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Tags()));

                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("3.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Echo",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Echo()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("4.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Comments",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Comment()));
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Variables',style: GoogleFonts.poppins(fontSize:13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.input,size: 10,color:Colors.deepPurpleAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("5.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Variables",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Variables()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("6.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Constants",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Constants()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("7.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Data types",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Data_types()));
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Operators',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.calculate,size: 10,color: Colors.deepPurpleAccent,),
             children: [
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("10.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Arithmetic Operators",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Operator()));
                 },
               ),
               Divider(color: Colors.black54,),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("11.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Assignment Operators ",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Assign()));
                 },
               ),
               Divider(color: Colors.black54,),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("12.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Comparison Operators ",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Compare()));
                 },
               ),
               Divider(color: Colors.black54,),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("13.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Logical Operators ",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Logical_Op()));
                 },
               ),
             ],
          ),
          ExpansionTile(title: Text('Arrays',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.view_array,size: 10,color: Colors.deepPurpleAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("14.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Numeric Arrays",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Num_arrays()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("15.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Associative Arrays",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Assoc_array()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("16.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Multi-Dimensional Arrays",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Multi()));
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Control Structures',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.repeat,size: 10,color:Colors.deepPurpleAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("17.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("The If Else Statement",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>If_Stat()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("18.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("The Elseif Statement",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Else_if()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("19.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("The while loop",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>While_loop()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("20.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("The Do while loop",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Do_loop()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("21.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("The For loop",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>For_loop()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("22.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("The Foreach loop",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Foreach_loop()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("23.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("The Switch Statement",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Switch_stat()));
                },
              ),
              Divider(color: Colors.black54,),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("26.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Include & Require",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Include()));
                },
              ),
            ],
          ),
          ExpansionTile(title: Text('Functions',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.settings,color: Colors.deepPurpleAccent,size: 10,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("27.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("User-Defined Functions",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Def_func()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("28.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Function Parameters",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Func_param()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("29.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("The return Statement",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Return_stat()));
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Forms with PHP',style: GoogleFonts.poppins(fontSize: 13,fontWeight:FontWeight.bold),),
            leading: Icon(Icons.input,color: Colors.deepPurpleAccent,size: 10,),
            children: [
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("32.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("PHP Forms",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Forms_php()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("33.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Get & Post",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){

                },
              ),

            ],
          ),
            ExpansionTile(title: Text('Working with files',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.file_copy,size: 10,color:Colors.deepPurpleAccent,),
              children: [
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("36.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Writing a file",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Write()));
                  },
                ),
                Divider(color:Colors.black54),
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("37.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Appending to a file",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Append()));
                  },
                ),
                Divider(color:Colors.black54),
                ListTile(
                  leading: Icon(Icons.sort),
                  title: Text("38.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Reading a file",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Read()));
                  },
                ),
              ],
            ),
           ExpansionTile(
             title: Text('Object-Oriented PHP',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             leading: Icon(Icons.format_shapes,size: 10,color: Colors.deepPurpleAccent,),
             children: [
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("40.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Classes & Objects",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Classesandobj()));
                 },
               ),
               Divider(color:Colors.black54),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("41.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Constructor & Destructor",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Constr()));
                 },
               ),

             ],
           ),
          ExpansionTile(
              title: Text('PHP Cheat-Sheet',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.file_copy,size: 10,color:Colors.deepPurpleAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("Cheat-Sheet",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("PHP",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>PHP_sheetcheat()));
                },
              ),
            ],
          )
        ],
      ),

    );
  }
}
class PHP_sheetcheat extends StatefulWidget {

  @override
  _PHP_sheetcheatState createState() => _PHP_sheetcheatState();
}

class _PHP_sheetcheatState extends State<PHP_sheetcheat> {
  bool _isLoading=true;
  late PDFDocument document;

  loadDocument()async{
    document=await PDFDocument.fromAsset('assets/PHPcheatsheet.pdf');
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
        title: Text('PHP',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Php_Course())); },),
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

