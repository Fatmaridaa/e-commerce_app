import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

import '../../models/Product.dart';
import '../../utilities/routes.dart';

class homeListItem extends StatelessWidget {
  final Product product;

  const homeListItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context, rootNavigator: true)
          .pushNamed(AppRoutes.productDetailesPageRoute, arguments: product),
      child: SizedBox(
        height: 30.h,
        child: DecoratedBox(
          decoration: BoxDecoration(),
          child: Column(
            children: [
              Image.asset(
                product.images,
                width: 30.w,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Text(
                product.title,
                style: GoogleFonts.tenorSans(
                    textStyle: TextStyle(color: Colors.white, fontSize: 12.sp)),
              ),
              SizedBox(
                height: 0.5.h,
              ),
              Text(
                " ${product.price}\$",
                style: GoogleFonts.tenorSans(
                    textStyle: TextStyle(color: Colors.white, fontSize: 10.sp)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
