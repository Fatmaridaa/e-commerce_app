

import 'package:flutter/cupertino.dart';
import 'package:gp/views/screens/register_screen.dart';
import 'package:gp/utilities/routes.dart';

import '../views/screens/login_screen.dart';
import '../models/Product.dart';
import '../views/screens/bottomNavbar.dart';
import '../views/screens/category_detailes.dart';
import '../views/screens/checkout/add_shipping_address_screen.dart';
import '../views/screens/checkout/checkout_screen.dart';
import '../views/screens/delete_profile.dart';
import '../views/screens/edit_profile.dart';
import '../views/screens/landingPage.dart';
import '../views/screens/product_detailes.dart';
import '../views/screens/profile.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case AppRoutes.deleteProfilePageRoute:
      return CupertinoPageRoute(
          builder: (_) => deleteProfile(), settings: settings);



    case AppRoutes.checkoutPageRoute:
      return CupertinoPageRoute(
          builder: (_) => CheckoutPage(), settings: settings);


    case AppRoutes.addAddressPageRoute:
      return CupertinoPageRoute(
          builder: (_) => AddShippingAddressPage(), settings: settings);





    case AppRoutes.categoryDetailesPageRoute:
      return CupertinoPageRoute(
          builder: (_) => categoryProducts(), settings: settings);

    case AppRoutes.productDetailesPageRoute:
      final product = settings.arguments as Product;

      return CupertinoPageRoute(
          builder: (_) => ProductDetails(product: product,),
          settings: settings);

    case AppRoutes.editProfilePageRoute:
      return CupertinoPageRoute(
          builder: (_) => editProfile(), settings: settings);

    case AppRoutes.profileDetailesPageRoute:
      return CupertinoPageRoute(
          builder: (_) => ProfileScreen(), settings: settings);

    case AppRoutes.loginPageRoute:
      return CupertinoPageRoute(
          builder: (_) => const LoginScreen(), settings: settings);



    case AppRoutes.registerPageRoute:
      return CupertinoPageRoute(
          builder: (_) => const registerScreen(), settings: settings);


    case AppRoutes.bottomNavBarPageRoute:
      return CupertinoPageRoute(
          builder: (_) => CustomNavbar(), settings: settings);

    case AppRoutes.landingPageRoute:
    default:
      return CupertinoPageRoute(
          builder: (_) => const landingPage(), settings: settings);
  }
}
