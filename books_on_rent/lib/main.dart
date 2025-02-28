//import 'package:books_on_rent/account.dart';
import 'dart:developer';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:firebase_core/firebase_core.dart';
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'detailspage.dart';
import 'optionspage.dart';
import 'appcolor.dart';
import 'order_details_page.dart';
import 'shopping_bag.dart';
import 'appdata_modal.dart';
//import './p.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          // BooksPage(),
          HomePage(),
      // Practice(),
      //OptionsPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State createState() {
    return _HomePageState();
  }
}

// Widget sectionCards({
//   required String card1Name,
//   required String card1Pic,
//   List? listdata,
// }) {
//   return Column(
//     children: [
//       Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: GestureDetector(
//           child: Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(1000),
//             ),
//             margin: const EdgeInsets.only(right: 10, bottom: 10),
//             width: 150,
//             height: 150,
//             child: Stack(
//               alignment: AlignmentDirectional.topEnd,
//               children: [
//                 ClipRRect(
//                   clipBehavior: Clip.antiAliasWithSaveLayer,
//                   borderRadius: BorderRadius.circular(30),
//                   child: Image.asset(
//                     card1Pic,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 const Icon(Icons.favorite_border,
//                     color: Colors.white, weight: 500),
//               ],
//             ),
//           ),
//         ),
//       ),
//       Text(
//         card1Name,
//         style: GoogleFonts.quicksand(
//           fontSize: 20,
//           fontWeight: FontWeight.w700,
//         ),
//         overflow: TextOverflow.visible,
//         maxLines: 2,
//       ),
//     ],
//   );
// }
// Widget sectionCards({
//   required String card1Name,
//   required String card1Pic,
// }) {
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       GestureDetector(
//         onTap: () {
//                               OptionsPage(
//                                   optlist: AppdataModal.listEducation,
//                                   optindex: index);
//                               setState(() {});
//                             },
//         child: Container(
//           margin: const EdgeInsets.only(right: 15, top: 10),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(30),
//           ),
//           width: 175,
//           height: 175,
//           child: Stack(
//             alignment: AlignmentDirectional.topEnd,
//             children: [
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Image.asset(
//                   card1Pic,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               const Icon(Icons.favorite_border,
//                   color: Colors.white, weight: 500),
//             ],
//           ),
//         ),
//       ),
//       // Pic Title/ Books Name
//       SizedBox(
//         width: 175,
//         child: Center(
//           child: Text(
//             card1Name,
//             style: GoogleFonts.quicksand(
//               fontSize: 16,
//               fontWeight: FontWeight.w700,
//             ),
//             overflow: TextOverflow.visible,
//             maxLines: 2,
//           ),
//         ),
//       ),
//     ],
//   );
// }

class _HomePageState extends State {
  Widget sectionCards(
      {required String card1Name,
      required String card1Pic,
      required int index,
      required List listdata}) {
    // log("LIST DATA: ${listdata[index]}");
    // print("ListBookSections: ${AppdataModal.listBookSections}");
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            if (listdata == AppdataModal.listEducation) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OptionsPage(
                      optlist: AppdataModal.listEducation, optindex: index),
                ),
              );
            } else {
              log("INdex: $index");
              log(" data from index ${listdata[index]}");
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      Detailpage(mapBook: listdata[index], index: index),
                ),
              );
            }
          },
          child: Container(
            margin: const EdgeInsets.only(right: 15, top: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            width: 175,
            height: 175,
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    card1Pic,
                    fit: BoxFit.cover,
                  ),
                ),
                const Icon(Icons.favorite_border,
                    color: Colors.white, weight: 500),
              ],
            ),
          ),
        ),
        // Pic Title/ Books Name
        SizedBox(
          width: 175,
          child: Center(
            child: Text(
              card1Name,
              style: GoogleFonts.quicksand(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
              overflow: TextOverflow.visible,
              maxLines: 2,
            ),
          ),
        ),
      ],
    );
  }

  // int navbarindex = 0;
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    print(AppdataModal.listBookSections[0]['listPoetry']);
    print(AppdataModal.listBookSections[0]);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              // Row of Profile Pic And Name
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 8, left: 0),
                  margin: const EdgeInsets.only(top: 50),
                  width: 70,
                  height: 70,
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColor.color4,
                  ),
                  child: Image.asset(
                    "assets/images/profile.png",
                  ), // Profile pic Image
                ),
                Container(
                  margin: const EdgeInsets.only(top: 35, left: 20),
                  child: Text(
                    "Hi, Name!", // Hi Name text
                    style: GoogleFonts.quicksand(
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                        shadows: [
                          const Shadow(
                            offset: Offset(0, 4),
                            blurRadius: 2.0,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          ),
                        ]),
                  ),
                ),
              ],
            ),
            // Slogan Text
            Container(
              width: (MediaQuery.of(context).size.width) * 3 / 4,
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                "Discover the perfect book for every need!",
                style: GoogleFonts.quicksand(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            // Search Box On Home Page
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 20),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search",
                  filled: true,
                  hoverColor: AppColor.color4,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  prefixIcon: const Icon(Icons.search_outlined),
                  fillColor: AppColor.color4,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //EDUCATION AND ACADEMICS
                      Text(
                        "Educational & Academic >",
                        style: GoogleFonts.quicksand(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: AppColor.color1),
                      ),
                      SizedBox(
                        height: 235,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: AppdataModal.listEducation.length,
                          itemBuilder: (context, index) {
                            return sectionCards(
                                card1Name: AppdataModal.listEducation[index]
                                    ['cardname'],
                                card1Pic: AppdataModal.listEducation[index]
                                    ['cardpic'],
                                index: index,
                                listdata: AppdataModal.listEducation);
                          },
                        ),
                      ),

                      // BUSINESS &  FINANCE
                      Text(
                        "Business & Finance >",
                        style: GoogleFonts.quicksand(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: AppColor.color5),
                      ),
                      SizedBox(
                        height: 235,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: AppdataModal
                              .listBookSections[0]['listBusiness'].length,
                          itemBuilder: (context, index) {
                            return sectionCards(
                                card1Name: AppdataModal.listBookSections[0]
                                    ['listBusiness'][index]['cardname'],
                                card1Pic: AppdataModal.listBookSections[0]
                                    ['listBusiness'][index]['cardpic'],
                                index: index,
                                listdata: AppdataModal.listBookSections[0]
                                    ['listBusiness']);
                          },
                        ),
                      ),

                      // CHILDRENS BOOKS
                      Text(
                        "Children's Books >",
                        style: GoogleFonts.quicksand(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: AppColor.color6),
                      ),
                      SizedBox(
                        height: 235,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: AppdataModal
                              .listBookSections[0]['listChildrens'].length,
                          itemBuilder: (context, index) {
                            return sectionCards(
                                card1Name: AppdataModal.listBookSections[0]
                                    ['listChildrens'][index]['cardname'],
                                card1Pic: AppdataModal.listBookSections[0]
                                    ['listChildrens'][index]['cardpic'],
                                index: index,
                                listdata: AppdataModal.listBookSections[0]
                                    ['listChildrens']);
                          },
                        ),
                      ),

                      // POETRY
                      Text(
                        "Poetry >",
                        style: GoogleFonts.quicksand(
                            fontSize: 24,
                            fontWeight: FontWeight.w800,
                            color: AppColor.color6),
                      ),
                      SizedBox(
                        height: 235,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: AppdataModal
                              .listBookSections[0]['listPoetry'].length,
                          itemBuilder: (context, index) {
                            return sectionCards(
                                card1Name: AppdataModal.listBookSections[0]
                                    ['listPoetry'][index]['cardname'],
                                card1Pic: AppdataModal.listBookSections[0]
                                    ['listPoetry'][index]['cardpic'],
                                index: index,
                                listdata: AppdataModal.listBookSections[0]
                                    ['listPoetry']);
                          },
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

      // BOTTOMNAVIGATION BAR
      // bottomNavigationBar: NavigationBar(
      //   selectedIndex: navbarindex,
      //   destinations: <Widget>[
      //     NavigationDestination(
      //       // selectedIcon: Icon(Icons.home),
      //       icon: IconButton(
      //         onPressed: () {
      //           navbarindex = 0;
      //           setState(() {});
      //         },
      //         icon: Icon(Icons.home_outlined),
      //       ),
      //       label: 'Home',
      //     ),
      //     NavigationDestination(
      //       icon: IconButton(
      //         onPressed: () {
      //           navbarindex = 1;
      //           setState(() {
      //             Navigator.of(context)
      //                 .push(MaterialPageRoute(builder: (context) {
      //               return const ShoppingBag();
      //             }));
      //           });
      //         },
      //         icon: Icon(Icons.shopping_bag_outlined),
      //       ),
      //       label: 'Cart',
      //     ),
      //     NavigationDestination(
      //       icon: IconButton(
      //         onPressed: () {
      //           navbarindex = 2;
      //           setState(() {
      //             // Navigator.of(context)
      //             //     .push(MaterialPageRoute(builder: (context) {
      //             //   return const Fav();
      //             // })
      //             // );
      //           });
      //         },
      //         icon: Icon(Icons.favorite_border_outlined),
      //       ),
      //       label: 'Favorites',
      //     ),
      //     NavigationDestination(
      //       icon: IconButton(
      //         onPressed: () {
      //           Navigator.of(context)
      //               .push(MaterialPageRoute(builder: (context) {
      //             return const Account();
      //           }));

      //           navbarindex = 3;
      //           setState(() {});
      //         },
      //         icon: Icon(Icons.account_circle_outlined),
      //       ),
      //       label: 'Account',
      //     ),
      //   ],
      // ),

      // bottomNavigationBar: practice(),
      // CurvedNavigationBar(
      //   key: _bottomNavigationKey,
      //   color: Colors.blueAccent,
      //   items: <Widget>[
      //     IconButton(
      //       onPressed: () {
      //         const HomePage();
      //         setState(() {
      //         });
      //       },
      //       icon: const Icon(Icons.home, size: 30),
      //     ),
      //     IconButton(
      //       onPressed: () {
      //         const OrderDetailsPage();
      //         setState(() {
      //         });
      //       },
      //       icon: const Icon(Icons.inventory_2_outlined, size: 30)),
      //     IconButton(
      //       onPressed: () {
      //         const ShoppingBag();
      //         setState(() {
      //         });
      //       },
      //       icon: const Icon(Icons.shopping_bag_outlined, size: 30)),
      //     IconButton(onPressed: () {
      //         ();
      //         setState(() {
      //         });
      //       },
      //       icon: const Icon(Icons.favorite_border_outlined, size: 30)),
      //     IconButton(onPressed: () {
      //         const Account();
      //         setState(() {
      //         });
      //       },
      //       icon: const Icon(Icons.account_circle_outlined, size: 30)),
      //   ],
      // ),
    );
  }
}
