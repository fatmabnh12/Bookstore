import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Profile.dart';
import 'package:code_editor/code_editor.dart';

class MyEditor extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    List<String> contentOfPage1 = [
      "<!DOCTYPE html>",
      "<html lang='fr'>",
      "\t<body>",
      "\t\t<a href='page2.html'>go to page 2</a>",
      "\t</body>",
      "</html>",
    ];
    List<FileEditor> files = [
      new FileEditor(
        name: "page1.html",
        language: "html",
        code: contentOfPage1.join("\n"), // [code] needs a string
      ),
      new FileEditor(
        name: "page2.html",
        language: "html",
        code: "<a href='page1.html'>go back</a>",
      ),
      new FileEditor(
        name: "style.css",
        language: "css",
        code: "a { color: red; }",
      ),
    ];

    EditorModel model = new EditorModel(
      files: files, // the files created above
      // you can customize the editor as you want
      styleOptions: new EditorModelStyleOptions(
        heightOfContainer: 500,
        padding: EdgeInsets.all(8),
        fontSize: 13,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Code Editor',style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Profile())); },),
      ),
        body: SingleChildScrollView(
           child: CodeEditor(
             model: model, // the model created above, not required since 1.0.0
             edit: true, // can edit the files ? by default true
             disableNavigationbar: false, // hide the navigation bar  ? by default false
             onSubmit: (String?language, String?value) {
               print("language = $language");
               print("value = '$value'");
             },
           ),
        ),

    );
  }
}
