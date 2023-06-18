import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gp/models/Product.dart';
import 'package:sizer/sizer.dart';

import '../../utilities/routes.dart';

class categoryListItems extends StatefulWidget {
  final Product product;

  const categoryListItems({Key? key, required this.product}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _categoryListItemsState();
}

class _categoryListItemsState extends State<categoryListItems> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.of(context, rootNavigator: true).pushNamed(
          AppRoutes.productDetailesPageRoute,
          arguments: widget.product),
      child: SizedBox(
          // height: 22.h,
          child: Card(
        elevation: 0,
        color: Color(0xFF171725),
        child: Row(
          children: [
            Image(image: AssetImage('${widget.product.images}'), width: 25.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' ${widget.product.title}',
                    style: GoogleFonts.tenorSans(
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 17.sp)),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    ' ${widget.product.description}',
                    style: GoogleFonts.tenorSans(
                        textStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 12.sp,
                    )),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    " ${widget.product.price} \$",
                    style: GoogleFonts.tenorSans(
                        textStyle:
                            TextStyle(color: Colors.white, fontSize: 12.sp)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "+ADD TO CART",
                          style: GoogleFonts.tenorSans(
                              textStyle: TextStyle(
                                  color: Colors.white, fontSize: 12.sp)),
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              isFavorite = !isFavorite;
                            });
                          },
                          icon: Icon(
                            isFavorite ? Icons.favorite : Icons.favorite_border,
                            color: isFavorite ? Colors.red : Colors.white,
                            size: 3.5.h,
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
