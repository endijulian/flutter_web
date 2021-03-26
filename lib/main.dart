import 'package:flutter/material.dart';
import 'package:flutter_web/pages/landing_page.dart';

void main() => runApp(MyApp());

// void main() {
//   runApp(MyApp());
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}

// class LandingPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // body: Image.asset('ilustration.png'),
//       body: Center(
//         child: Column(
//           children: [
//             Text(
//               'Halo Semuanya',
//               // style: TextStyle(
//               //   fontSize: 30,
//               // ),
//               style: GoogleFonts.poppins(
//                 fontSize: 30,
//               ),
//             ),
//             Text(
//               'Halo Teman',
//               style: TextStyle(
//                 fontSize: 30,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
