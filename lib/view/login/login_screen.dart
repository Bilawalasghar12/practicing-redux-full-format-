import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:untitled4practicingreduxxfull/view/get/get.dart';

import '../../api/apicall.dart';
import '../../urls//url.dart';
import 'login_model.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {











  bool isEmailValid(String email) {
    final regex =
    RegExp(r'^[\w-]+(\.[\w-]+)*@([a-zA-Z0-9-]+\.)+[a-zA-Z]{2,7}$');
    return regex.hasMatch(email);
  }

  final _formKey = GlobalKey<FormState>();

  bool isEmailvalid(String email) {

    final emailRegExp = RegExp('mm@mm.com');
    return emailRegExp.hasMatch(email);
  }
  bool isPasswordvalid(String password) {

    final passwordRegExp = RegExp('12345678');
    return passwordRegExp.hasMatch(password);
  }
  List<Login> Logininfo = [];
  TextEditingController emailcontroller = TextEditingController(
      text: "mm@mm.com");
  TextEditingController passwordcontroller = TextEditingController(
      text: "12345678");

  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFFFF24232d),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Icon(
                  Icons.arrow_back_outlined,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(children: [
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Let's sign you in.",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 35),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    'Welcome back.',
                    style: TextStyle(color: Colors.grey, fontSize: 35),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "You've been missed!",
                    style: TextStyle(color: Colors.grey, fontSize: 35),
                  )
                ],
              )
            ]),
            SizedBox(
              height: 60,
            ),
            Form(
              key: _formKey,
              child: Row(
                children: [ SizedBox(width: 40,),
                  Column(
                    children: [
                      Container(
                        height: 70,
                        width: 320,
                        decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email Field  is empty';
                            }
                            if (isEmailValid(value) == value || value.isEmpty)
                              return null;
                          },

                          controller: emailcontroller,
                          onChanged: (value) {},
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(

                            // Color(0xFFFF0000),
                            fillColor: Color(0xFFFF1d1c23),
                            filled: true,
                            focusedBorder: OutlineInputBorder(

                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey)),
                            hintText: 'phone,email or username',
                            hintStyle: TextStyle(color: Colors.grey),
                            //prefixIcon: Icon(
                            //Icons.email,
                            //size: 17,
                            //color: Colors.grey.shade200,
                            //),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.grey)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 70,
                        width: 320,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password is empty';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          controller: passwordcontroller,
                          onChanged: (value) {},
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            // Color(0xFFFF0000),
                            fillColor: Color(0xFFFF1d1c23),
                            filled: true,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(color: Colors.grey)),
                            hintText: 'password',
                            hintStyle: TextStyle(color: Colors.grey),
                            suffixIcon: Icon(
                              Icons.event,
                              color: Colors.grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                                borderSide: BorderSide(color: Colors.grey)),
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 220,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 60,
                  width: 330,

                  decoration: BoxDecoration( borderRadius: BorderRadius.circular(50),
                    color: Colors.white,
                      
                   ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)
                      ),
                      primary: Colors.white,
                      // background color
                      onPrimary: Colors.white, // text color
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        loginApiCall(
                            emailcontroller.text, passwordcontroller.text);
                      }
                    },
                    child: Text(
                      'Sign in',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  loginApiCall(String email, String password) async {
    Map<String, dynamic> bodyParms = {
      "email_address": email,
      "password": password,
    };


    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3FhLXRlc3QuZ2V0LWxpY2Vuc2VkLmNvLnVrL3Byb3RlY3QvYXBpL2F1dGgvbG9naW4iLCJpYXQiOjE2NzUwODY3OTcsIm5iZiI6MTY3NTA4Njc5NywianRpIjoiT2JXNFFvNUxNdW5jeklpaiIsInN1YiI6IjMyNjg3NSIsInBydiI6ImMyYTBkODEzNzYyMjgxOTUwYzhhMGRkN2FmMGI4ZThkYWYzOWU5YTkifQ.AH-vl7ZZog8Vf_sVlwc9PSWqzVsx0b8j7K2sN0tdG38';
    await prefs.setString ('token', token);
    print("bilawal: $token");

    debugPrint("000000000000000 ./././././ $bodyParms");
    ApiService().apiLogin(
      context,
      url: URL.loginUrl,
      bodyParms: bodyParms,
      sucessResponse: (sucessResponse) async {
        debugPrint("11111111111111 ./././././ $sucessResponse");
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => GetScreen()));
      },
      errorResponse: (errorResponse) async {
        Fluttertoast.showToast(
          msg: errorResponse!['message'],
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          backgroundColor: Colors.red,
          textColor: Colors.white,
        );
        debugPrint("2222222222222 ./././././ $errorResponse");
      },
    );
  }
}













