import 'package:clippy_flutter/arc.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Widgets/ItemBottomNavBar.dart';

class ItemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(16),
                child: Image.asset(
                  'images/burger.jpg',
                  height: 300,
                  width: double.infinity,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Arc(
                edge: Edge.TOP,
                arcType: ArcType.CONVEX,
                height: 30,
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 60,
                            bottom: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
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
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            bottom: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Burger',
                                style: GoogleFonts.notoSerif(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: 90,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Colors.red[300],
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      CupertinoIcons.minus,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text(
                                      '1',
                                      style: GoogleFonts.notoSerif(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(
                                      CupertinoIcons.plus,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                          ),
                          child: Text(
                            'Delicios Burger',
                            style: GoogleFonts.notoSerif(),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 15,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delivery Time:',
                                style: GoogleFonts.notoSerif(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 5,
                                    ),
                                    child: Icon(
                                      CupertinoIcons.clock,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '30 Minutes',
                                style: GoogleFonts.notoSerif(
                                  fontStyle: FontStyle.italic,
                                  fontWeight: FontWeight.bold,
                                ),
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: ItemBottomNavBar(),
    );
  }
}
