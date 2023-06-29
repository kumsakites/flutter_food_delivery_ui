import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'HomePage.dart';
import 'LoginPage.dart';
import 'loghome.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: NavBar(),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Color.fromARGB(255, 224, 218, 218),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // SnappingListState(),

            Container(
              child: Image.asset('images/home.jpg'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Column(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Top',
                        style: GoogleFonts.notoSerif(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        ' #1',
                        style: GoogleFonts.notoSerif(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.red),
                      ),
                      Text(
                        ' Fastest',
                        style: GoogleFonts.notoSerif(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                // Padding(
                //   padding: const EdgeInsets.all(3.0),
                //   child: SliderPage(),
                // ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Delivery Food For You',
                        style: GoogleFonts.notoSerif(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          'KurazTec is the best software company in Ethiopia',
                          style: GoogleFonts.notoSerif(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // SizedBox(
            //   height: 25.0,
            // ),

            SizedBox(
              height: 50,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Ink(
                padding: EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red[300],
                ),
                child: Text(
                  'Get Started',
                  style: GoogleFonts.notoSerif(
                      fontSize: 25.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
