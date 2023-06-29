import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../try.dart';

class NewestItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Column(
          children: [
            // single item
            //for (int i = 0; i < 6; i++)
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Container(
                width: 350,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'ItemPage');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/donimos_pizza.jpg',
                          height: 100,
                          width: 130,
                        ),
                      ),
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Donimos Pizza',
                            style: GoogleFonts.notoSerif(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Mixed Pizza',
                            style: GoogleFonts.notoSerif(),
                          ),
                          RatingBar.builder(
                            onRatingUpdate: (index) {},
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text(
                            '\$9.80',
                            style: GoogleFonts.notoSerif(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 20,
                          ),
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.red[300],
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Container(
                width: 350,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/pepperoni_pizza.jpg',
                          height: 100,
                          width: 130,
                        ),
                      ),
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'pepperoni Pizza',
                            style: GoogleFonts.notoSerif(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Mixed Pizza',
                            style: GoogleFonts.notoSerif(),
                          ),
                          RatingBar.builder(
                            onRatingUpdate: (index) {},
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text(
                            '\$8.5',
                            style: GoogleFonts.notoSerif(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 20,
                          ),
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.red[300],
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Container(
                width: 350,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/polo.jpg',
                          height: 100,
                          width: 130,
                        ),
                      ),
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Polo Pizza',
                            style: GoogleFonts.notoSerif(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Mixed Pizza',
                            style: GoogleFonts.notoSerif(),
                          ),
                          RatingBar.builder(
                            onRatingUpdate: (index) {},
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text(
                            '\$9.5',
                            style: GoogleFonts.notoSerif(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 20,
                          ),
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.red[300],
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Container(
                width: 350,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/gourment_pizza.jpg',
                          height: 100,
                          width: 130,
                        ),
                      ),
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Gourment Pizza',
                            style: GoogleFonts.notoSerif(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Mixed Pizza',
                            style: GoogleFonts.notoSerif(),
                          ),
                          RatingBar.builder(
                            onRatingUpdate: (index) {},
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text(
                            '\$8.9',
                            style: GoogleFonts.notoSerif(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 20,
                          ),
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.red[300],
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Container(
                width: 350,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/burger.jpg',
                          height: 100,
                          width: 130,
                        ),
                      ),
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Burger',
                            style: GoogleFonts.notoSerif(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Mixed Pizza',
                            style: GoogleFonts.notoSerif(),
                          ),
                          RatingBar.builder(
                            onRatingUpdate: (index) {},
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text(
                            '\$7.5',
                            style: GoogleFonts.notoSerif(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 20,
                          ),
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.red[300],
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: Container(
                width: 350,
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/sprite.jpg',
                          height: 100,
                          width: 130,
                        ),
                      ),
                    ),
                    Container(
                      width: 190,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'Sprite',
                            style: GoogleFonts.notoSerif(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '300 ml',
                            style: GoogleFonts.notoSerif(),
                          ),
                          RatingBar.builder(
                            onRatingUpdate: (index) {},
                            initialRating: 4,
                            minRating: 1,
                            direction: Axis.horizontal,
                            itemCount: 5,
                            itemSize: 18,
                            itemPadding: EdgeInsets.symmetric(
                              horizontal: 4,
                            ),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.yellow[700],
                            ),
                          ),
                          Text(
                            '\$8.5',
                            style: GoogleFonts.notoSerif(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                            size: 20,
                          ),
                          Icon(
                            CupertinoIcons.cart,
                            color: Colors.red[300],
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
