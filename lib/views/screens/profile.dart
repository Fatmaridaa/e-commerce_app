import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/routes.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.white,
            width: 100.w,
            height: 100.h,
            child: Padding(
              padding: EdgeInsets.only(left: 3.w, right: 3.w, bottom: 1.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [],
                  ),

                  Image.asset(
                    'assets/icons/user.png',
                    width: 36.w,
                    height: 16.h,
                  ),

                  SizedBox(
                    height: 1.h,
                  ),

                  Text(
                    'Profile Details',
                    style: TextStyle(color: Color(0xFF171725), fontSize: 20.sp),
                  ),

                  SizedBox(height: 4.h),

                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            child: TextFormField(
                              readOnly: true,
                              keyboardType: TextInputType.name,
                              style: TextStyle(color: Color(0xFF171725)),
                              decoration: InputDecoration(
                                focusColor: null,
                                hintText: 'First Name',
                                hintStyle: TextStyle(color: Color(0xFF979797)),
                              ),
                            ),
                          ), // firstName

                          Spacer(),

                          Container(
                            width: 40.w,
                            child: TextFormField(
                              keyboardType: TextInputType.name,
                              readOnly: true,
                              style: TextStyle(color: Color(0xFF171725)),
                              decoration: InputDecoration(
                                hintText: 'Last Name',
                                hintStyle: TextStyle(color: Color(0xFF979797)),
                              ),
                            ),
                          ), //LastName
                        ],
                      ),

                      SizedBox(height: 5.h),

                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        readOnly: true,
                        style: TextStyle(color: Color(0xFF171725)),
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Color(0xFF979797)),
                          suffixIcon: Icon(
                            Icons.email,
                            color: Color(0xFF979797),
                          ),
                        ),
                      ), //Email

                      SizedBox(height: 5.h),

                      TextFormField(
                        keyboardType: TextInputType.phone,
                        readOnly: true,
                        style: TextStyle(color: Color(0xFF171725)),
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(color: Color(0xFF979797)),
                          suffixIcon: Icon(
                            Icons.phone,
                            color: Color(0xFF979797),
                          ),
                        ),
                      ), //phoneNumber

                      SizedBox(height: 5.h),

                      TextFormField(
                        readOnly: true,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        style: TextStyle(color: Color(0xFF171725)),
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Color(0xFF979797)),
                          suffixIcon: Icon(
                            Icons.remove_red_eye,
                            color: Color(0xFF979797),
                          ),
                        ),
                      ),
                    ],
                  ), // FullName

                  Spacer(),

                  Container(
                    width: 100.w,
                    height: 8.h,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF171725)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                      ),
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true)
                            .pushNamed(AppRoutes.editProfilePageRoute);
                      },
                      child: Text(
                        'Edit Profile',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
