import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/AppBarWidget.dart';
import '../Widgets/CategoriesWidget.dart';
import '../Widgets/DrawerWidget.dart';
import '../Widgets/NewestItemWidget.dart';
import '../Widgets/PopularItemWidget.dart';

import '../try.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          AppBarWidget(),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 15,
            ),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: [
                    Icon(
                      CupertinoIcons.search,
                      color: Colors.blue[100],
                    ),
                    Container(
                      height: 50,
                      width: 280,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'search',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.filter_list),
                  ],
                ),
              ),
            ),
          ),
          // FOR CATEGORY
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Text(
              'Categories',
              style: GoogleFonts.notoSerif(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          CategoriesWidget(),
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Text(
              'Find You Favorite Food',
              style: GoogleFonts.notoSerif(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          // PupularWidget
          PopularItemWidget(),
          // To check new item
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Text(
              'New Item',
              style: GoogleFonts.notoSerif(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
          ),
          // New item widget
          NewestItemWidget(),
        ],
      ),
      //drawer
      drawer: DrawerWidget(),

      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyApp()));
          },
          child: Icon(
            Icons.add,
            size: 28,
            color: Colors.white,
          ),
          backgroundColor: Colors.red[300],
        ),
      ),
    );
  }
}
