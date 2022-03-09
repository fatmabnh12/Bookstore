import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:like_button/like_button.dart';
import 'package:pdf/Flutter_course/Config.dart';
import 'package:pdf/Flutter_course/Flutter_intro.dart';
import 'package:pdf/Mobiledev.dart';

import 'Flutter_course/App.dart';
import 'Flutter_course/Ass.dart';
import 'Flutter_course/Btm.dart';
import 'Flutter_course/Btn.dart';
import 'Flutter_course/Car.dart';
import 'Flutter_course/Col.dart';
import 'Flutter_course/Cont.dart';
import 'Flutter_course/Dart_language.dart';
import 'Flutter_course/Draw.dart';
import 'Flutter_course/Elev.dart';
import 'Flutter_course/Env.dart';
import 'Flutter_course/Fonts.dart';
import 'Flutter_course/Frm.dart';
import 'Flutter_course/Listv.dart';
import 'Flutter_course/Navbar.dart';
import 'Flutter_course/Navigate.dart';
import 'Flutter_course/Out.dart';
import 'Flutter_course/Pic.dart';
import 'Flutter_course/Ro.dart';
import 'Flutter_course/Sca.dart';
import 'Flutter_course/Splash.dart';
import 'Flutter_course/Sta.dart';
import 'Flutter_course/Text_field.dart';
import 'Flutter_course/Wid_intro.dart';
import 'Flutter_course/Widgetful.dart';
import 'Flutter_course/Widgless.dart';
import 'Flutter_course/Yaml_file.dart';

class Flutter_Course extends StatefulWidget {

  @override
  _Flutter_CourseState createState() => _Flutter_CourseState();
}

class _Flutter_CourseState extends State<Flutter_Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
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
              Padding(padding: EdgeInsets.all(4)),
              SvgPicture.asset('assets/images/fluttericon.svg',width: 50,height: 50,),
              Padding(padding: EdgeInsets.all(4)),
              Text('Flutter is Google UI Toolkit for '
                  'crafting beautiful,natively compiled applications for'
                  'mobile,web and desktop from a single codebase ',textAlign:TextAlign.center,style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),)
            ],
          ),
          Divider(),
          ExpansionTile(
            title: Text('Flutter Intro',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.integration_instructions,size: 10,color: Colors.blueAccent,),
            children: [
              Divider(color: Colors.grey,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("1.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("What is Flutter ?",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Flutter_intro()));
                },
              ),
              Divider(color: Colors.grey,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("2.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Dart Language",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Dart_language()));
                },
              ),
            ],
          ),
          ExpansionTile(
              title: Text('Plugin Flutter',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.phonelink_setup,size: 10,color: Colors.blueAccent,),
              children: [
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("3.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Setting up your environment",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Env()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("4.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Yaml file",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Yaml_file()));
                  },
                ),

              ],
          ),
          ExpansionTile(
            title: Text('Build with Flutter- Widgets',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.widgets,size: 10,color: Colors.blueAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("5.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Introduction to widgets",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Wid_intro()));
                },
              ),
              Divider(color: Colors.grey,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("6.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Stateless Widget",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Widgetful()));
                },
              ),
              Divider(color:Colors.grey),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("7.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Stateful Widget",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Widgless()));
                },
              ),
              Divider(color:Colors.grey),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("8.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Navigator",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Navigate()));
                },
              ),
              Divider(color:Colors.grey),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("9.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Scaffold",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Sca()));
                },
              ),
              Divider(color:Colors.grey),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("10.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("App Bar",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>App()));
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Build with Flutter- Layouts',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.layers_outlined,size: 10,color: Colors.blueAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("11.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Column",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Col()));
                },
              ),
              Divider(color:Colors.grey),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("12.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Row",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Ro()));
                },
              ),
              Divider(color:Colors.grey),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("13.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Stack",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Sta()));
                },
              ),
              Divider(color: Colors.grey,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("14.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Container",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Cont()));
                },
              ),
              Divider(color:Colors.grey),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("15.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Bottom Navigation Bar",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Btm()));
                },
              ),
              Divider(color:Colors.grey),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("16.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Drawer",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Draw()));
                },
              ),
            ],
            ),
           ExpansionTile(
               title: Text('Buttons',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13),),
             leading: Icon(Icons.smart_button,color: Colors.blueAccent,size: 10,),
             children: [
               ListTile(
                 leading: Icon(Icons.text_snippet),
                 title: Text("17.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Elevated Button",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Elev()));
                 },
               ),
               Divider(color: Colors.grey,),
               ListTile(
                 leading: Icon(Icons.text_snippet),
                 title: Text("18.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Outlined Button",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Out()));
                 },
               ),
             ],
           ),
          ExpansionTile(
              title: Text('Assets & Images',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
               leading: Icon(Icons.picture_in_picture_alt,size: 10,color: Colors.blueAccent,),
               children: [
                 ListTile(
                   leading: Icon(Icons.text_snippet),
                   title: Text("19.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("Image from asset",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Ass()));
                   },
                 ),
                 Divider(color:Colors.grey),
                 ListTile(
                   leading: Icon(Icons.text_snippet),
                   title: Text("20.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                   subtitle: Text("SvgPicture",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                   onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Pic()));
                   },
                 ),
               ],
          ),
           ExpansionTile(
             title: Text('Build with Flutter- Lists And Cards',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             leading: Icon(Icons.list_alt,size: 10,color: Colors.blueAccent,),
             children: [
               ListTile(
                 leading: Icon(Icons.text_snippet),
                 title: Text("21.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("ListView",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Listv()));
                 },
               ),
               Divider(color: Colors.grey,),
               ListTile(
                 leading: Icon(Icons.text_snippet),
                 title: Text("22.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Simple Cards",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Car()));
                 },
               ),
             ],
           ),
            ExpansionTile(
              title: Text('Build with Flutter- Forms',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.login,size: 10,color: Colors.blueAccent,),
              children: [
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("23.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("TextField",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Text_field()));
                  },
                ),
                Divider(color: Colors.grey,),
                ListTile(
                  leading: Icon(Icons.text_snippet),
                  title: Text("24.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                  subtitle: Text("Form widget",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>Frm()));
                  },
                ),
              ],
            ),
          ExpansionTile(
            title: Text('Essential packages',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.play_for_work,size: 10,color: Colors.blueAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("26.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Google Fonts",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Fonts()));
                },
              ),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("27.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Google navbar",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Navbar()));
                },
              ),
              Divider(color: Colors.grey,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("28.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Flutter authentication buttons ",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Btn()));
                },
              ),
              Divider(color: Colors.grey,),
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("29.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Splash screen",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Splash()));

                },
              ),
            ],
          ),
          ExpansionTile(title: Text('Backend with Flutter',style:GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 13)),
            leading: Icon(Icons.miscellaneous_services,size: 10,color: Colors.blueAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("30.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Configure Firebase",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Config_firebase()));
                },
              ),
            ],
          ),
          ExpansionTile(
            title: Text('Flutter Cheat-Sheet',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.file_copy,size: 10,color: Colors.blueAccent,),
            children: [
              ListTile(
                leading: Icon(Icons.text_snippet),
                title: Text("Cheat-Sheet",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Flutter",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Flutter_CheatSheet()));
                },
              ),
            ],
          )
        ],
      ),

    );
  }
}
class Flutter_CheatSheet extends StatefulWidget {
  const Flutter_CheatSheet({Key? key}) : super(key: key);

  @override
  _Flutter_CheatSheetState createState() => _Flutter_CheatSheetState();
}

class _Flutter_CheatSheetState extends State<Flutter_CheatSheet> {
  bool _isLoading=true;
  late PDFDocument document;

  loadDocument()async{
    document=await PDFDocument.fromAsset('assets/fluttercheat.pdf');
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
        title: Text('Flutter',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Flutter_Course())); },),
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
