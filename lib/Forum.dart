import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'Home.dart';

class Forum extends StatefulWidget {

  @override
  _ForumState createState() => _ForumState();
}

class _ForumState extends State<Forum> {
  final _key= GlobalKey<FormState>();
  final _titleTextController=TextEditingController();
  final _description=TextEditingController();
  final FocusNode _titleFocusNode = FocusNode();
  final FocusNode _descriptionFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: Text('Forum',style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Home())); },),
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.all(10)),
          Text('Feel free to discuss',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,color: Colors.black54,fontWeight: FontWeight.w800),),
          Divider(),
          Form(
            key: _key,
              child: Column(
                children: [
                  TextFormField(
                    controller: _titleTextController,
                    focusNode: _titleFocusNode,
                    style: GoogleFonts.poppins(),
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.text_fields),
                      errorBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Colors.red,
                          )
                      ),
                      border:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: _description,
                    focusNode: _descriptionFocusNode,
                    maxLines: 5,
                    maxLength: 5,
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.text_snippet),
                      errorBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                            color: Colors.red,
                          )
                      ),
                      border:OutlineInputBorder(
                          borderRadius:BorderRadius.circular(20)
                      ),
                    ),
                  ),
                  SizedBox(height: 16,),
                  ElevatedButton(onPressed: (){

                  },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              HexColor('#FF5B7F'),
                              HexColor('#FC9272'),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          width: 200,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text('Send Item',style: GoogleFonts.poppins(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                        ),
                      )),
                 ],


          )),
        ],
      ),



    );
  }
}
