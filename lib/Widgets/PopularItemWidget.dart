import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularItemWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 5,
      ),
      child: Row(
        children: [
          // single items,
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 7,
            ),
            child: Container(
              width: 170,
              height: 225,
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
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'ItemPage');
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'images/burger.jpg',
                          height: 120,
                        ),
                      ),
                    ),
                    Text(
                      'Burger',
                      style: GoogleFonts.notoSerif(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text('Mized Buger',
                        style: GoogleFonts.notoSerif(
                          fontWeight: FontWeight.normal,
                        )),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$7.5',
                          style: GoogleFonts.notoSerif(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.red[500],
                          ),
                        ),
                        VerticalDivider(width: 60),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 7,
            ),
            child: Container(
              width: 170,
              height: 225,
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
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/donimos_pizza.jpg',
                        height: 120,
                      ),
                    ),
                    Text(
                      'Donimos',
                      style: GoogleFonts.notoSerif(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text('Mized Pizza',
                        style: GoogleFonts.notoSerif(
                          fontWeight: FontWeight.normal,
                        )),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$9.80',
                          style: GoogleFonts.notoSerif(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.red[500],
                          ),
                        ),
                        VerticalDivider(width: 60),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 25,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 7,
            ),
            child: Container(
              width: 170,
              height: 225,
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
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/pepperoni_pizza.jpg',
                        height: 120,
                      ),
                    ),
                    Text(
                      'Pepperoni Pizza',
                      style: GoogleFonts.notoSerif(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text('Mized Pizza',
                        style: GoogleFonts.notoSerif(
                          fontWeight: FontWeight.normal,
                        )),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$8.5',
                          style: GoogleFonts.notoSerif(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.red[500],
                          ),
                        ),
                        VerticalDivider(width: 60),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 7,
            ),
            child: Container(
              width: 170,
              height: 225,
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
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/polo.jpg',
                        height: 120,
                      ),
                    ),
                    Text(
                      'Polo Pizza',
                      style: GoogleFonts.notoSerif(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                    Text('Mized Pizza',
                        style: GoogleFonts.notoSerif(
                          fontWeight: FontWeight.normal,
                        )),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$9.5',
                          style: GoogleFonts.notoSerif(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.red[500],
                          ),
                        ),
                        VerticalDivider(width: 60),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 7,
            ),
            child: Container(
              width: 170,
              height: 225,
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
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/gourment_pizza.jpg',
                        height: 120,
                      ),
                    ),
                    Text(
                      'Gourment Pizza',
                      style: GoogleFonts.notoSerif(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text('Mized Pizza',
                        style: GoogleFonts.notoSerif(
                          fontWeight: FontWeight.normal,
                        )),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$8.9',
                          style: GoogleFonts.notoSerif(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.red[500],
                          ),
                        ),
                        VerticalDivider(width: 60),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 7,
            ),
            child: Container(
              width: 170,
              height: 225,
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
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/sprite.jpg',
                        height: 120,
                      ),
                    ),
                    Text(
                      'Sprite',
                      style: GoogleFonts.notoSerif(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    Text('300 ml',
                        style: GoogleFonts.notoSerif(
                          fontWeight: FontWeight.normal,
                        )),
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$8.5',
                          style: GoogleFonts.notoSerif(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.red[500],
                          ),
                        ),
                        VerticalDivider(width: 60),
                        Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
