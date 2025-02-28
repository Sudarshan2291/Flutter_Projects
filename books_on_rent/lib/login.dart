import 'dart:developer';
import 'package:flutter/material.dart';
import 'detailspage.dart';
import 'showCustomSnackbar.dart';
import 'signup.dart';
import 'package:google_fonts/google_fonts.dart';
import 'appcolor.dart';
import 'package:firebase_auth/firebase_auth.dart';
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
} 

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _firebaseAuth =FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
    
      body: Stack(
       
        children: [
        Container(
          height: 1000,
          child: Image.asset("assets/ss.avif",fit: BoxFit.cover,),
        ),
         
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Login to your account",
                          style: GoogleFonts.quicksand(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              color: AppColor.color2,
                              ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        children: <Widget>[
                          TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              hintText: "Email",
                              hintStyle: GoogleFonts.quicksand(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextField(
                            controller: passwordController,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              hintText: "Password",
                              hintStyle: GoogleFonts.quicksand(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(0, 0, 0, 1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: const BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
onTap: () async {

if (emailController.text.trim().isNotEmpty &&
passwordController.text.trim().isNotEmpty) {
try {
UserCredential userCredential =
await _firebaseAuth.signInWithEmailAndPassword(
email: emailController.text,
password: passwordController.text,
);




// Navigator.of(context).pushReplacement(
// MaterialPageRoute(
// builder: (context) {
// return Detailpage();
// },
// ),
// );
} on FirebaseAuthException catch (error) {
log("C2W : ERROR :${error.code}");
log("C2W : ERROR :${error.message}");
CustomSnackbar.showCustomSnackbar(
message: error.code,
context: context,
);
}
}
},
child: Container(
  width: 200,
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(30.0)),
padding:
const EdgeInsets.symmetric(horizontal: 30.0, vertical:

5.0),

child: const Center(
  child: Text(
  "Login",
  style: TextStyle(
  fontSize: 25,
  
  ),
  ),
),
),
),
                   
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Don't have an account?",
                          style: GoogleFonts.quicksand(
                            fontSize: 20,
                            fontWeight: FontWeight.w800,
                            color: const Color.fromRGBO(0, 0, 0, 1),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                             Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return  SignupPage1();
                      }));

                          },
                          child: Text(
                            " Sign up",
                            style: GoogleFonts.quicksand(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        )
                      ],
                    ),
                    // Container(
                    //   padding: EdgeInsets.only(top: 100),
                    //   height: 200,
                    //   decoration: BoxDecoration(
                    //     image: DecorationImage(
                    //         //image: AssetImage("assets/background.png"),
                    //         fit: BoxFit.fitHeight),
                    //   ),
                    // )
                  ],
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget inputFile({required String label, bool obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        label,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
      ),
      const SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey,
            ))),
      ),
      const SizedBox(
        height: 10,
      )
    ],
  );
}
