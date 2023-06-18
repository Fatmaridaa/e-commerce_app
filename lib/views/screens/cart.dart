import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gp/utilities/routes.dart';
import 'package:gp/views/shared/cart_list_items.dart';
import 'package:sizer/sizer.dart';

import '../../models/add_to_cart.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xFF171725),
      child: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            SizedBox(
              height: 3.h,
              width: 70.w,
              child: TabBar(
                labelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 0.3.w, color: Colors.white),
                ),
                unselectedLabelColor: Colors.white60,
                tabs: [
                  Tab(
                    child: Text(
                      'MY CART',
                      style: GoogleFonts.tenorSans(
                        textStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'FAVOURITES',
                      style: GoogleFonts.tenorSans(
                        textStyle: TextStyle(
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: TabBarView(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 3.w, right: 3.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 2.h,
                              ),
                              SizedBox(
                                child: ListView(
                                  physics: NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  children: cartItem
                                      .map(
                                        (e) => Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: CartListItems(
                                        cartItem: e,
                                      ),
                                    ),
                                  )
                                      .toList(),
                                ),
                              ),
                              Container(
                                width: 100.w,
                                height: 0.2.h,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'SUB TOTAL : ',
                                    style: GoogleFonts.tenorSans(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  Text(
                                    '1056\$',
                                    style: GoogleFonts.tenorSans(
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Container(
                          width: 100.w,
                          height: 8.h,
                          child: TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                              MaterialStateProperty.all<Color>(
                                  Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.addAddressPageRoute);
                            },
                            child: Text(
                              'CHECKOUT',
                              style: GoogleFonts.tenorSans(
                                textStyle: TextStyle(
                                  color: Color(0xFF171725),
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),


                        SizedBox(height: 10.h,)
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        // FAVOURITES Tab View Content
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // A3mli hna design l fav
          ],
        ),
      ),
    );
  }
}
