import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Codeeditor.dart';
import 'package:pdf/Welcome.dart';
import 'package:rating_dialog/rating_dialog.dart';
import 'package:share/share.dart';
import 'Home.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
User? user=FirebaseAuth.instance.currentUser;
  bool _isSigningOut = false;
String ShareText="https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes";




@override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold,color: HexColor('#515C6F')),),
        backgroundColor: Colors.white,
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black54,), onPressed: () {
          Navigator.push(context,MaterialPageRoute(builder:(context)=>Home())); },),
      ),
      body: ListView(
        children: [
          Container(
            width: 414.0,
            height: 180.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(24.0),
                bottomLeft: Radius.circular(24.0),),
              gradient:LinearGradient(
              colors: [
            HexColor('#FF5B7F'),
             HexColor('#FC9272'),
               ],
              ),
            ),
              child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(8)),
                // This image will be replaced by the user's image
                Image.network(user!.photoURL!,height: 100,width: 100,),
                Padding(padding: EdgeInsets.all(8)),
                // Username will be displayed
                Text(user!.displayName!,style: GoogleFonts.poppins(fontSize: 11,fontWeight: FontWeight.bold),),
                ],
            ),
             ),
             Padding(padding: EdgeInsets.all(8)),
        ListTile(title: TextButton(onPressed: () {},
        child:
        Text('Rate us',style: GoogleFonts.poppins(fontWeight: FontWeight.bold) ,),),
          leading:Icon(Icons.rate_review),
        ),
        Center(
          child: RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.amber,
            ),
            onRatingUpdate: (rating) {
              Text('Rating: $rating');
            },
          ),
        ),
          Padding(padding: EdgeInsets.all(10)),
             ListTile(
               leading: Icon(Icons.logout),
               title: TextButton(onPressed: (){
                 FirebaseAuth _auth=FirebaseAuth.instance;
                 _auth.signOut().then((res) => 
                     Navigator.of(context,rootNavigator: true).pushReplacement(MaterialPageRoute(builder: (context)=>Welcome()))
                 );
               },
                 child: Text('Log out',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold),),
               ),
             ),

             ListTile(
               leading: Icon(Icons.ios_share),
               title: TextButton(onPressed: () {
                 RenderObject? box=context.findRenderObject();
                 Share.share(ShareText);
               },
                 child: Text('Share',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.bold),),),
             ),
              ListTile(
                leading: Icon(Icons.code),
                title: TextButton(onPressed: () {  Navigator.push(context,MaterialPageRoute(builder:(context)=>MyEditor())); }, child: Text('Code editor',style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 15)), ),
              )
        ],
      ),

    );
  }
}



