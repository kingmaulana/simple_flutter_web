import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedItemIndex = 0;
  String imageUrl = 'illustration.png';

  @override
  Widget build(BuildContext context) {
    Widget navItem({String title, int index, String foto}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedItemIndex = index;
            imageUrl = foto;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: index == selectedItemIndex
                    ? FontWeight.w500
                    : FontWeight.w300,
                color: Color(0xff1D1E3C),
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                color: index == selectedItemIndex
                    ? Color(0xffFE998D)
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // NOTE : NAVIGATION
                    Image.asset(
                      'logo.png',
                      width: 72,
                      height: 40,
                    ),
                    Row(
                      children: [
                        navItem(
                            title: 'Guides',
                            index: 0,
                            foto: 'illustration.png'),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Pricing',
                          index: 1,
                          foto: 'illustration1.png',
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Team',
                          index: 2,
                          foto: 'illustration2.png',
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                            title: 'Stories',
                            index: 3,
                            foto: 'illustration3.png'),
                      ],
                    ),
                    Image.asset(
                      'btn.png',
                      width: 163,
                      height: 53,
                    )
                  ],
                ),

                //NOTE : CONTENT
                SizedBox(
                  height: 76,
                ),
                Image.asset(
                  imageUrl,
                  height: 350,
                ),
                SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'icon_scroll.png',
                      width: 24,
                      height: 24,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      'Scroll to learn more',
                      style: GoogleFonts.poppins(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
