import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gp/models/add_to_cart.dart';
import 'package:sizer/sizer.dart';

class CartListItems extends StatefulWidget {
  final AddToCartModel cartItem;

  const CartListItems({Key? key, required this.cartItem}) : super(key: key);

  @override
  _CartListItemsState createState() => _CartListItemsState();
}

class _CartListItemsState extends State<CartListItems> {
  int quantity = 1;

  void incrementQuantity() {
    setState(() {
      if (quantity <  widget.cartItem.quantity!) {
        quantity++;
      }
    });
  }

  void decrementQuantity() {
    setState(() {
      if (quantity > 1) {
        quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 18.h,
      child: Card(
        elevation: 0,
        color: Color(0xFF171725),
        child: Row(
          children: [
            Image(image: AssetImage('${widget.cartItem.image}'), width: 26.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        ' ${widget.cartItem.title}',
                        style: GoogleFonts.tenorSans(
                          textStyle:
                          TextStyle(color: Colors.white, fontSize: 16.sp),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Remove the item from the cart
                        },
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                          size: (3.h),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 4.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Size: ${widget.cartItem.size}',
                          style: GoogleFonts.tenorSans(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                        SizedBox(height: 1.5.h),
                        Text(
                          "${widget.cartItem.price} \$",
                          style: GoogleFonts.tenorSans(
                            textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: decrementQuantity,
                        icon: Icon(Icons.remove_circle_outlined,color: Colors.grey,),
                      ),
                      Text(
                        '$quantity',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                        ),
                      ),
                      IconButton(
                        onPressed: incrementQuantity,
                        icon: Icon(Icons.add_circle_outlined,color: Colors.grey,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
