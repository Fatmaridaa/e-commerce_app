import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../models/Product.dart';
import '../shared/category_list_items.dart';

class categoryProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Color(0xFF171725),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 3.w),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "T-shirts",
                        style: GoogleFonts.tenorSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      SizedBox(
                        child: ListView(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          children: products
                              .map(
                                (e) => Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: categoryListItems(product: e),
                                ),
                              )
                              .toList(),
                        ),
                      ),
                    ],
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
