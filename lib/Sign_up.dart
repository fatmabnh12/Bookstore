import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdf/Home.dart';
import 'package:pdf/Persisenttabbottom.dart';
import 'package:pdf/utils/Validator.dart';
import 'package:pdf/utils/fire_auth.dart';
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}
class _SignupState extends State<Signup> {
  final _registerFormkey=GlobalKey<FormState>();
  final _emailTextController=TextEditingController();
  final _passwordTextController=TextEditingController();
  final _focusemail=FocusNode();
  final _focuspassword=FocusNode();
  bool _isProcessing=false;
  @override
  Widget build(BuildContext context) {
    final Size screensize= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: ListView(
      children: <Widget>[
        Container(
            child:SvgPicture.string(
              shape,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          alignment: Alignment.topLeft,
        ),
        Center(
          child: Text('Sign up',style: GoogleFonts.poppins(fontSize: 30,color: HexColor('#1D2226')),),
        ),
        SizedBox(height: 40),
        Form(
          key: _registerFormkey,
            child: Column(
              children: [
                TextFormField(
                  controller:_emailTextController,
                  validator: (value)=>Validator.validateEmail(email: value),
                  focusNode: _focusemail,
                  style: GoogleFonts.poppins(),
                  decoration: InputDecoration(
                    hintText: "Email",
                    suffixIcon: Icon(Icons.email_rounded),
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
                  controller: _passwordTextController,
                  validator: (value)=>Validator.validatePassword(password: value),
                  obscureText: true,
                  focusNode: _focuspassword,
                  decoration: InputDecoration(
                    hintText: "Password",
                    suffixIcon: Icon(Icons.remove_red_eye),
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
                SizedBox(height: 32),
                ElevatedButton(onPressed: () async{
                  setState(() {
                    _isProcessing=true;
                  });
                  if(_registerFormkey.currentState!.validate()){
                    User? user=await FireAuth.registerUsingEmailPassword(email: _emailTextController.text, password: _passwordTextController.text);
                    setState(() {
                      _isProcessing=false;
                    });
                    if(user!= null){
                     Navigator.of(context).
                     pushAndRemoveUntil(
                         MaterialPageRoute(builder: (context)=>Home()),
                             ModalRoute.withName('/'), );
                    }
                  }

                },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.zero,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                    ),
                  child:Ink(
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
                      width: 300,
                      height: 50,
                      alignment: Alignment.center,
                      child: Text('Register',style: GoogleFonts.poppins(fontSize: 18,color: Colors.white),),
                    ),

                ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
const String shape= '<svg viewBox="0.0 0.0 188.0 162.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="12"/></filter><radialGradient id="gradient" gradientTransform="matrix(0.476978 -0.878915 0.747915 0.405886 -0.112447 0.736515)" fx="0.5" fy="0.5" fr="0.0" cx="0.5" cy="0.5" r="0.863718"><stop offset="0.0" stop-color="#ff6a83" /><stop offset="0.446809" stop-color="#f98875" /><stop offset="0.995813" stop-color="#f3a866" /><stop offset="1.0" stop-color="#73514b" /><stop offset="1.0" stop-color="#dcd2d2" /><stop offset="1.0" stop-color="#6e5049" /></radialGradient></defs><path  d="M 0 0 L 0 162 C 8.844991683959961 158.554443359375 16.11356163024902 150.7325134277344 17.12556648254395 141.2412567138672 C 17.68849563598633 135.9631652832031 16.39670181274414 130.6744995117188 16.22108840942383 125.3684692382812 C 16.04510307312012 120.0628128051758 17.34061622619629 114.1606674194336 21.63419532775879 111.1310195922852 C 26.51897621154785 107.684700012207 33.14537048339844 109.2433395385742 38.85575485229492 110.9334487915039 C 57.70805740356445 116.5133590698242 76.55998229980469 122.0932769775391 95.41191101074219 127.6731872558594 C 106.341552734375 130.9083404541016 120.1282424926758 133.3445281982422 127.4083557128906 124.4576873779297 C 132.4263305664062 118.3319091796875 131.7927093505859 109.0027084350586 128.1997222900391 101.9192962646484 C 124.6063766479492 94.83628082275391 118.6124801635742 89.38668060302734 113.0721206665039 83.74443817138672 C 107.164924621582 77.72821044921875 101.520393371582 71.11209869384766 98.67525482177734 63.12356948852539 C 95.83047485351562 55.13467407226562 96.27545928955078 45.47342300415039 101.6837387084961 38.99141311645508 C 108.2718124389648 31.09506034851074 120.0255584716797 30.06037139892578 130.0023498535156 32.17848205566406 C 139.9795227050781 34.29658889770508 149.3915405273438 38.91359329223633 159.5056457519531 40.19382476806641 C 169.6201019287109 41.47406005859375 181.4300384521484 38.26233291625977 185.9237670898438 28.97355270385742 C 188.6681060791016 23.29995346069336 188.1207885742188 16.62679481506348 187.4748992919922 10.340087890625 C 187.1247863769531 6.931546211242676 186.7847290039062 3.417986154556274 186.959228515625 0 L 0 0 Z" fill="url(#gradient)" fill-opacity="0.77" stroke="none" stroke-width="1" stroke-opacity="0.77" stroke-linecap="square" stroke-linejoin="bevel" filter="url(#shadow)"/></svg>';
