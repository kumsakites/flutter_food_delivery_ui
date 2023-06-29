import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class DrawerWidget extends StatefulWidget {
  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Kumsa Kitessa',
              style: GoogleFonts.notoSerif(
                fontWeight: FontWeight.bold,
                color: Colors.lightGreenAccent,
              ),
            ),
            accountEmail: Text(
              'kumsakitessa17@gmail.com',
              style: GoogleFonts.notoSerif(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(246, 219, 251, 8),
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  'images/nav_1.jpg',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/nav_2.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.history),
                  title: Text(
                    'Order History',
                  ),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text(
                    'Enter Promo Code',
                  ),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () => null,
                ),
                ListTile(
                  leading: Icon(Icons.format_quote_rounded),
                  title: Text('FAQS'),
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Log Out'),
                  onTap: () async {
                    Navigator.pop(context);
                    await _auth.signOut();
                  },
                ),
              ],
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'images/nav_3.jpg',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
