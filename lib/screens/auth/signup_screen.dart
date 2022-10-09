import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_delivery_app/screens/auth/signin_screen.dart';

import '../dashbord/bottom_navbar.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 80.h, left: 20.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Create Account',
              style: TextStyle(
                  fontSize: 25.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 0.40,
                  fontFamily: 'Poppins-Regular'),
            ),
            SizedBox(
              height: 40.h,
            ),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                )),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12, width: 1),
                ),
                 prefixIcon: Icon(Icons.person),
                hintText: 'Full Name',
               
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            TextFormField(
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                )),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12, width: 1),
                ),
                 prefixIcon: Icon(Icons.person),
                hintText: 'Email',
               
              ),
            ),
            SizedBox(
                height: 30.h,
              ),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                  color: Colors.black,
                )),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12, width: 1),
                ),
                 prefixIcon: Icon(Icons.person),
                hintText: 'Password',
               
              ),
            ),SizedBox(
                height: 30.h,
              ),
              TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black26),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black12, width: 1),
                    ),
                    hintText: 'Confim Password',
                    prefixIcon: Icon(Icons.lock)),
              ),
              SizedBox(
                height: 30.h,
              ),

                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context)=> BottomNavbar())
                    );
                    },

                    child:Container(
                      height: 50.h,
                      width: 150.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.orange
                      ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Sign Up',
                        style: TextStyle(
                          fontSize: 18.sp,
                          color: Colors.white
                        ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          color: Colors.white,
                        )
                      ],
                    ),
                    ) ,
                  ),
                ),
            Expanded(child: SizedBox()), 
            Center(
              child: Wrap(
                children: [
                   Text('Already have account ?',
                   style: TextStyle(fontSize: 16.sp),
                   ),
                   GestureDetector(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context)=> const SigninScreen()
                        )
                        );
                    },
                    child: Text('Sign in',style: 
                    TextStyle(fontSize: 16.sp,color: Colors.orange),),
                   )
                ],
              ),
            ),
             SizedBox(
                height: 80.h,
              ),
          ],
        ),
      )),
    );
  }
}
