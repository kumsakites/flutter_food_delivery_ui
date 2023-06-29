import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductListScreen extends StatefulWidget {
  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Order List',
          style: GoogleFonts.notoSerif(
            color: Color(0xFF151026),
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          Icon(CupertinoIcons.cart),
          SizedBox(width: 20),
          Center(
            child: Badge(
              child: Text('0'),
            ),
          ),
        ],
      ),
    );
  }
}
