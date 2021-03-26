import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget navItem({String title, int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              // 'Guides',
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xff1D1E3C),
                // fontWeight: FontWeight.w500,
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                // color: Color(0xffFE998D),
                color: index == selectedIndex
                    ? Color(0xffFE998D)
                    : Colors.transparent,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      // body: Image.asset('ilustration.png'),
      body: Stack(
        children: [
          Image.asset(
            'background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 100,
              vertical: 30,
            ),
            child: Column(
              children: [
                //NOTE: NAVIGATION

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'logo.png',
                      width: 72,
                      height: 30,
                    ),
                    Row(
                      children: [
                        navItem(
                          title: 'Guides',
                          index: 0,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Pricing',
                          index: 1,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Team',
                          index: 2,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        navItem(
                          title: 'Stories',
                          index: 3,
                        ),
                      ],
                    ),
                    Image.asset(
                      'btn_account.png',
                      width: 163,
                      height: 53,
                    ),
                  ],
                ),

                // NOTE: CONTENT
                SizedBox(
                  height: 76,
                ),
                Image.asset(
                  'ilustration.png',
                  height: 450,
                ),

                //NOTE : FOOTER
                SizedBox(
                  height: 84,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'icon_scroll.png',
                      width: 24,
                    ),
                    SizedBox(
                      width: 13,
                    ),
                    Text(
                      'Scroll to Learn More',
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}



// class LandingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // body: Image.asset('ilustration.png'),
//       body: Stack(
//         children: [
//           Image.asset(
//             'background.png',
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             fit: BoxFit.fill,
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 100,
//               vertical: 30,
//             ),
//             child: Column(
//               children: [
//                 //NOTE: NAVIGATION

//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Image.asset(
//                       'logo.png',
//                       width: 72,
//                       height: 30,
//                     ),
//                     Row(
//                       children: [
//                         Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text(
//                               'Guides',
//                               style: GoogleFonts.poppins(
//                                 fontSize: 18,
//                                 color: Color(0xff1D1E3C),
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             Container(
//                               width: 66,
//                               height: 2,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: Color(0xffFE998D),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           width: 50,
//                         ),
//                         Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text(
//                               'Pricing',
//                               style: GoogleFonts.poppins(
//                                 fontSize: 18,
//                                 color: Color(0xff1D1E3C),
//                                 fontWeight: FontWeight.w300,
//                               ),
//                             ),
//                             Container(
//                               width: 66,
//                               height: 2,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: Colors.transparent,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           width: 50,
//                         ),
//                         Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text(
//                               'Team',
//                               style: GoogleFonts.poppins(
//                                 fontSize: 18,
//                                 color: Color(0xff1D1E3C),
//                                 fontWeight: FontWeight.w300,
//                               ),
//                             ),
//                             Container(
//                               width: 66,
//                               height: 2,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: Colors.transparent,
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           width: 50,
//                         ),
//                         Column(
//                           mainAxisSize: MainAxisSize.min,
//                           children: [
//                             Text(
//                               'Stories',
//                               style: GoogleFonts.poppins(
//                                 fontSize: 18,
//                                 color: Color(0xff1D1E3C),
//                                 fontWeight: FontWeight.w300,
//                               ),
//                             ),
//                             Container(
//                               width: 66,
//                               height: 2,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 color: Colors.transparent,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     Image.asset(
//                       'btn_account.png',
//                       width: 163,
//                       height: 53,
//                     ),
//                   ],
//                 ),

//                 // NOTE: CONTENT
//                 SizedBox(
//                   height: 76,
//                 ),
//                 Image.asset(
//                   'ilustration.png',
//                   height: 450,
//                 ),

//                 //NOTE : FOOTER
//                 SizedBox(
//                   height: 84,
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Image.asset(
//                       'icon_scroll.png',
//                       width: 24,
//                     ),
//                     SizedBox(
//                       width: 13,
//                     ),
//                     Text(
//                       'Scroll to Learn More',
//                       style: GoogleFonts.poppins(
//                         fontSize: 20,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
