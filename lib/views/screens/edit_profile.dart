import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/routes.dart';

class editProfile extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  final _phoneNumberController = TextEditingController();

  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _emailFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();
  final _lastNameFocusNode = FocusNode();
  final _phoneFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            color: Colors.white,
            width: 100.w,
            height: 100.h,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.bottomNavBarPageRoute);
                            },
                            icon: Icon(
                              Icons.close,
                              color: Color(0xFF171725),
                              size: 4.h,
                            )),
                      ],
                    ),

                    Image.asset(
                      'assets/icons/user.png',
                      width: 32.w,
                      height: 14.h,
                    ),

                    SizedBox(
                      height: 1.h,
                    ),

                    Text(
                      'Profile Details',
                      style:
                          TextStyle(color: Color(0xFF171725), fontSize: 17.sp),
                    ),

                    SizedBox(height: 3.h),

                    Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 40.w,
                                child: TextFormField(
                                  controller: _firstNameController,
                                  validator: (val) =>
                                      val!.isEmpty ? 'Required ' : null,
                                  onEditingComplete: () =>
                                      FocusScope.of(context)
                                          .requestFocus(_lastNameFocusNode),
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  style: TextStyle(color: Color(0xFF171725)),
                                  decoration: InputDecoration(
                                    hintText: 'First Name',
                                    hintStyle:
                                        TextStyle(color: Color(0xFF979797)),
                                  ),
                                ),
                              ), // firstName

                              Spacer(),

                              Container(
                                width: 40.w,
                                child: TextFormField(
                                  controller: _lastNameController,
                                  validator: (val) =>
                                      val!.isEmpty ? 'Required ' : null,
                                  onEditingComplete: () =>
                                      FocusScope.of(context)
                                          .requestFocus(_emailFocusNode),
                                  textInputAction: TextInputAction.next,
                                  keyboardType: TextInputType.name,
                                  style: TextStyle(color: Color(0xFF171725)),
                                  decoration: InputDecoration(
                                    hintText: 'Last Name',
                                    hintStyle:
                                        TextStyle(color: Color(0xFF979797)),
                                  ),
                                ),
                              ), //LastName
                            ],
                          ),

                          SizedBox(height: 5.h),

                          TextFormField(
                            controller: _emailController,
                            validator: (val) =>
                                val!.isEmpty ? 'Required ' : null,
                            onEditingComplete: () => FocusScope.of(context)
                                .requestFocus(_phoneFocusNode),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
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
                            controller: _phoneNumberController,
                            validator: (val) =>
                                val!.isEmpty ? 'Required ' : null,
                            onEditingComplete: () => FocusScope.of(context)
                                .requestFocus(_passwordFocusNode),
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.phone,
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
                            controller: _passwordController,
                            validator: (val) =>
                                val!.isEmpty ? 'Required ' : null,
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
                          ), //password
                        ],
                      ),
                    ), // FullName

                    SizedBox(
                      height: 5.h,
                    ),

                    Container(
                      width: 100.w,
                      height: 7.h,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF171725)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.bottomNavBarPageRoute);
                          }
                        },
                        child: Text(
                          'Save',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 2.h,
                    ),

                    Container(
                      width: 100.w,
                      height: 7.h,
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF171725)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.deleteProfilePageRoute);
                        },
                        child: Text(
                          'Delete',
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
