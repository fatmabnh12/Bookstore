import 'package:auth_buttons/auth_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Persisenttabbottom.dart';
import 'package:pdf/utils/google_signin.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/sign_button.dart';
import 'Sign_in.dart';
import 'Sign_up.dart';
class AfterWelcome extends StatefulWidget {

  @override
  _AfterWelcomeState createState() => _AfterWelcomeState();
}

class _AfterWelcomeState extends State<AfterWelcome> {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = new GoogleSignIn();
  bool _isSigningIn = false;

  @override
  Widget build(BuildContext context) {
    final Size screensize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor('#FFFFFF'),
      body: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(45)),
            SvgPicture.asset('assets/images/logo.svg', width: 250,),
            Padding(padding: EdgeInsets.all(5)),
            Text('Sign in with ', style: GoogleFonts.poppins(fontSize: 15,
                color: HexColor('#515C6F'),
                fontWeight: FontWeight.w600),),
            Padding(padding: EdgeInsets.all(6)),
            SignInButton(
                buttonType: ButtonType.facebook,
                onPressed: () {}),
            Padding(padding: EdgeInsets.all(6)),
            // Google AuthButton
            FutureBuilder(
              future: Authentication.initializeFirebase(context: context),
              builder: (context,snapshot){
                if (snapshot.hasError) {
                  return Text('Error initializing Firebase');
                } else if (snapshot.connectionState == ConnectionState.done) {
                  return GoogleAuthButton(
                      onPressed: () async{
                    setState(() {
                      _isSigningIn = true;
                    });
                    User? user =
                    await Authentication.signInWithGoogle(context: context);

                    setState(() {
                      _isSigningIn = false;
                    });

                    if (user != null) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => PersistentTabsDemo(
                          ),
                        ),
                      );
                    }
                  },
                  );
                }
                return CircularProgressIndicator();
              },
               ),


            Padding(padding: EdgeInsets.all(6)),
            ElevatedButton(onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Signin()));
              // Sign in
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
                    child: Text('Email', style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),),
                  ),
                )),
            Padding(padding: EdgeInsets.all(15)),
            Text('Or sign up with', style: GoogleFonts.poppins(fontSize: 15,
                color: HexColor('#515C6F'),
                fontWeight: FontWeight.w600),),
            Padding(padding: EdgeInsets.all(15)),
            ElevatedButton(onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Signup()));
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
                    child: Text('Sign up', style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}