import 'package:flutter/material.dart';
import 'package:appbar_animated/appbar_animated.dart';
import '../shared/appbar.dart';
import 'package:sizer/sizer.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gp/utilities/assets.dart';

import '../../models/Product.dart';
import '../shared/homeListItem.dart';
import 'category_detailes.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScaffoldLayoutBuilder(
        backgroundColorAppBar:
        const ColorBuilder(Colors.transparent, Color(0xFF171725)),
        textColorAppBar: const ColorBuilder(Colors.white),
        appBarBuilder: (context, colorAnimated) => CustomAppBar(
          colorAnimated: colorAnimated,
        ),
        child: Container(
          width: 100.w,
          height: 100.h,
          color: Color(0xFF171725),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      appAssets.homeImage,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 60.h,
                    ),
                    Opacity(
                      opacity: 0.6,
                      child: Container(
                        width: double.infinity,
                        height: 60.h,
                        color: Color(0xFF171725),
                      ),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.all(8.0),
                    //   child: Row(
                    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //     children: [
                    //       Image.asset(
                    //         'assets/images/logo.png',
                    //         width: 13.w,
                    //         height: 15.h,
                    //       ),
                    //       IconButton(
                    //           onPressed: () {
                    //             Navigator.of(context, rootNavigator: true)
                    //                 .pushNamed(AppRoutes.loginPageRoute);
                    //           },
                    //           icon: Icon(
                    //             Icons.logout,
                    //             color: Colors.white,
                    //             size: 5.h,
                    //           )),
                    //     ],
                    //   ),
                    // )
                  ],
                ),

                SizedBox(
                  height: 2.h,
                ),

                Container(
                  height: 6.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 38.w,
                        height: 0.2.h,
                        color: Colors.white,

                      ),

                      Text(
                        'ADULTS',
                        style: GoogleFonts.tenorSans(
                            textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 15.sp
                            )
                        ),
                      ),

                      Container(
                        width: 38.w,
                        height: 0.2.h,
                        color: Colors.white,

                      ),
                    ],

                  ),
                ),


                SizedBox(
                  height: 2.h,
                ),



                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "T-shirts",
                        style: GoogleFonts.tenorSans(
                          textStyle: TextStyle(
                              color: Colors.white70,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => categoryProducts()));
                        },
                        child: Text(
                          'See All',
                          style: GoogleFonts.tenorSans(
                              textStyle: TextStyle(
                                  color: Colors.white70, fontSize: 12.sp)),
                        ),
                      )
                    ],
                  ),
                ), //  seeAll w title

                SizedBox(
                  height: 2.h,
                ),

                SizedBox(
                  height: 29.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: products
                        .map(
                          (e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: homeListItem(product: e),
                      ),
                    )
                        .toList(),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "glasses",
                        style: GoogleFonts.tenorSans(
                          textStyle: TextStyle(
                              color: Colors.white70,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.of(context).pushNamed(AppRoutes.categoryDetailesPageRoute);
                        },
                        child: Text(
                          'See All',
                          style: GoogleFonts.tenorSans(
                              textStyle: TextStyle(
                                  color: Colors.white70, fontSize: 12.sp)),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  height: 29.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: products
                        .map(
                          (e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: homeListItem(product: e),
                      ),
                    )
                        .toList(),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "dresses",
                        style: GoogleFonts.tenorSans(
                          textStyle: TextStyle(
                              color: Colors.white70,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.of(context).pushNamed(AppRoutes.categoryDetailesPageRoute);
                        },
                        child: Text(
                          'See All',
                          style: GoogleFonts.tenorSans(
                              textStyle: TextStyle(
                                  color: Colors.white70, fontSize: 12.sp)),
                        ),
                      )
                    ],
                  ),
                ), //  seeAll w title

                SizedBox(
                  height: 2.h,
                ),

                SizedBox(
                  height: 29.h,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: products
                        .map(
                          (e) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: homeListItem(product: e),
                      ),
                    )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
