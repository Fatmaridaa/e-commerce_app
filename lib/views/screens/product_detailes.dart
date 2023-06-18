import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../models/Product.dart';
import '../../utilities/routes.dart';
import '../shared/dropdown_menu.dart';

class ProductDetails extends StatefulWidget {
  final Product product;

  const ProductDetails({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 100.w,
          height: 100.h,
          color: Color(0xFF171725),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [


                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      '${widget.product.images}',
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 55.h,
                    ),
                  ),


                  IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(AppRoutes.bottomNavBarPageRoute);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        size: 7.w,
                      ))
                ],
              ),



              Padding(
                  padding: EdgeInsets.all(2.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.product.title,
                      style: GoogleFonts.tenorSans(
                          textStyle:
                          TextStyle(color: Colors.white, fontSize: 20.sp,fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 20.w,
                            height: 5.h,
                            child: dropDownMenu()),
                        IconButton(
                            onPressed: () {
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            },
                            icon: Icon(
                              isFavorite ? Icons.favorite : Icons.favorite_border,
                              color: isFavorite ? Colors.red : Colors.white,
                              size: 4.h,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      widget.product.description,
                      style: GoogleFonts.tenorSans(
                          textStyle: TextStyle(
                            color: Colors.white70,
                            fontSize: 15.sp,
                          )),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Text(
                      "\$ ${widget.product.price}",
                      style: GoogleFonts.tenorSans(
                          textStyle:
                          TextStyle(color: Colors.white, fontSize: 15.sp)),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Color',
                          style: GoogleFonts.tenorSans(
                              textStyle:
                              TextStyle(color: Colors.white, fontSize: 15.sp)),
                        ),
                        SizedBox(width: 3.w),
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: Colors.black,
                            radius: 2.5.w,
                          ),
                        ),
                        SizedBox(width: 3.w),
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 2.5.w,
                          ),
                        ),
                        SizedBox(width: 3.w),
                        InkWell(
                          onTap: () {},
                          child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 2.5.w,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Spacer(),
              Container(
                width: 100.w,
                height: 8.h,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Color(0xFF33333f)),
                  ),
                  onPressed: () {},
                  child: Text(
                    '+ ADD TO CART',
                    style: GoogleFonts.tenorSans(
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
      ),
    );
  }
}
