import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Bootstrap_Course/Modals_course.dart';
import 'package:like_button/like_button.dart';
import 'package:pdf/Bootstrap_Course/Download.dart';
import 'package:pdf/Bootstrap_Course/Containers_course.dart';
import 'package:pdf/Bootstrap_Course/Grid_System.dart';
import 'package:pdf/Bootstrap_Course/Columns.dart';
import 'package:pdf/Bootstrap_Course/Headings.dart';
import 'Bootstrap_Course/Cards.dart';
import 'Bootstrap_Course/Dropdowns.dart';
import 'Bootstrap_Course/Forms.dart';
import 'Bootstrap_Course/Start.dart';
import 'Bootstrap_Course/Nav_bar.dart';
import 'Bootstrap_Course/Tables.dart';
import 'Bootstrap_Course/Jumbotron.dart';
import 'Bootstrap_Course/Icons_boots.dart';
import 'Bootstrap_Course/Buttons.dart';
import 'Webdev.dart';

class Bootstrap_Course extends StatefulWidget {

  @override
  _Bootstrap_CourseState createState() => _Bootstrap_CourseState();
}

class _Bootstrap_CourseState extends State<Bootstrap_Course> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bootstrap',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
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
              SvgPicture.asset('assets/images/bootsticon.svg',width: 80,height: 80,),
              Text(' Quickly design and customize responsive websites and mobile-first sites '
                  ' The most popular front-end framework ',textAlign: TextAlign.center,
                style: GoogleFonts.poppins(fontSize: 12,fontWeight: FontWeight.w600,color: Colors.black54),) ,
            ],
          ),
            Divider(),
           ExpansionTile(
               title: Text('Getting Started',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
              leading: Icon(Icons.not_started,size: 10,color: Colors.deepPurple,),
             children: [
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("1.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Why Bootstrap ?",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Start()));
                 },
               ),
                Divider(color:Colors.black54),
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("2.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Download",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>Download()));
                 },
                ),
             ],
           ),
          ExpansionTile(
            title: Text('Layout',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.grid_view,size: 10,color: Colors.deepPurple,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("3.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Responsive Grid System",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Grid_System()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("4.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Containers",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Containers_course()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("5.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Columns",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Columns()));
                },
              ),
            ],
          ),
          ExpansionTile(title: Text('Components',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold)),
            leading: Icon(Icons.layers,size: 10,color: Colors.deepPurple,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("6.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Navigation Bars",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Nav_bar()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("7.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Headings",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Headings()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("8.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Modals",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Modals_course()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("9.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Cards",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Cards_course()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("10.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Dropdowns",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Dropdowns()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("11.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Forms",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Forms()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("12.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Tables",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Tables()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("13.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Jumbotron",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Jumbotron()));
                },
              ),
              Divider(color:Colors.black54),
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("14.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Buttons",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Buttons()));
                },
              ),
            ],
          ),
          ExpansionTile(title: Text('Bootstrap Icons',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
            leading: Icon(Icons.color_lens,size: 10,color:Colors.deepPurple,),
            children: [
              ListTile(
                leading: Icon(Icons.sort),
                title: Text("15.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                subtitle: Text("Install",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Bootstrap_icons()));
                },
              ),
            ],
          ),
           ExpansionTile(title: Text('Helper Sheet-Cheat',style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.bold),),
             leading: Icon(Icons.file_copy_outlined,size: 10,color:Colors.deepPurple,),
             children: [
               ListTile(
                 leading: Icon(Icons.sort),
                 title: Text("17.1 Lesson",style: GoogleFonts.poppins(fontSize: 10,fontWeight: FontWeight.bold),),
                 subtitle: Text("Bootstrap v5 Sheet-Cheat",style: GoogleFonts.poppins(fontWeight: FontWeight.w600),),
                 onTap: (){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>BootstrapSheetCheat()));
                 },
               ),

             ],
           )

        ],
      ),
      
    );
  }
}
class BootstrapSheetCheat extends StatefulWidget {

  @override
  _BootstrapSheetCheatState createState() => _BootstrapSheetCheatState();
}

class _BootstrapSheetCheatState extends State<BootstrapSheetCheat> {
  bool _isLoading=true;
  late PDFDocument document;

  loadDocument()async{
    document=await PDFDocument.fromAsset('assets/Bootstrapcheatsheet.pdf');
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
        title: Text('Bootstrap v5',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black54),),
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Bootstrap_Course())); },),
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

