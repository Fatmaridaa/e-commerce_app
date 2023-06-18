import 'package:flutter/material.dart';
import 'package:gp/utilities/routes.dart';
import 'package:sizer/sizer.dart';

import '../../models/Product.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  List<Product> _searchResults = [];

  void _performSearch(String query) {
    List<Product> results = products
        .where((product) =>
        product.title.toLowerCase().contains(query.toLowerCase()))
        .toList();

    setState(() {
      _searchResults = results;
    });
  }

  void _navigateToProductDetails(Product product) {
    Navigator.of(context,rootNavigator: true).pushNamed(AppRoutes.productDetailesPageRoute,
        arguments: product);
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: double.infinity,
      color: Color(0xFF171725),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _performSearch,
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16.sp,
              ),
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey
                    )
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.white
                    )
                ),


                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Colors.white70,
                  fontSize: 16.sp,
                ),
                prefixIcon: Icon(Icons.search, color: Colors.white, size: 8.w),
                suffixIcon: IconButton(
                  icon: Icon(Icons.close, color: Colors.white, size: 8.w),
                  onPressed: () {
                    _searchController.clear();
                    _performSearch('');
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _searchResults.length,
              itemBuilder: (context, index) {
                Product product = _searchResults[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: ListTile(
                    leading: Image.asset(
                      '${product.images}',
                      width: 15.w,
                      height: 15.w,
                    ),
                    title: Text(
                      product.title,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 15.sp,
                      ),
                    ),
                    subtitle: Text(
                      '\$${product.price}',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12.sp,
                      ),
                    ),
                    onTap: () {
                      _navigateToProductDetails(product);
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
