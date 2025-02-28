// //  // List listEducation = [
// //   //   {
// //   //     'cardname': 'Engineering',
// //   //     'cardpic': "assets/images/educational/engineering.png"
// //   //   },
// //   //   {'cardname': 'LAW', 'cardpic': "assets/images/educational/lawbook.png"},
// //   //   {'cardname': 'BCom', 'cardpic': "assets/images/educational/bcom.png"},
// //   //   {'cardname': 'MCom', 'cardpic': "assets/images/educational/mcom.png"},
// //   //   {'cardname': 'MBBS', 'cardpic': "assets/images/educational/mbbs.png"},
// //   //   {'cardname': 'BSC', 'cardpic': "assets/images/educational/bsc.png"},
// //   //   {'cardname': "BJMC", 'cardpic': "assets/images/educational/bjmc.png"},
// //   //   {'cardname': 'BEd', 'cardpic': "assets/images/educational/bed.png"},
// //   //   {'cardname': 'BVSc', 'cardpic': "assets/images/educational/bvsc.png"},
// //   //   {'cardname': 'BArch', 'cardpic': "assets/images/educational/barc.png"},
// //   // ];
// //   // // List of Educational and Academics
// //   // List listBusiness = [
// //   //   {
// //   //     'cardname': 'Rich Dad Poor Dad',
// //   //     'cardpic': "assets/images/business/richdadpoordad.png"
// //   //   },
// //   //   {
// //   //     'cardname': 'The Lean Startup',
// //   //     'cardpic': "assets/images/business/theleanstartup.png"
// //   //   },
// //   //   {
// //   //     'cardname': 'Think and Grow Rich',
// //   //     'cardpic': "assets/images/business/thinkrichgrowrich.png"
// //   //   },
// //   //   {
// //   //     'cardname': 'The Intelligent Investor',
// //   //     'cardpic': "assets/images/business/theintelligentinvestor.png"
// //   //   },
// //   //   {
// //   //     'cardname': 'Principles: Life and Work',
// //   //     'cardpic': "assets/images/business/principles.png"
// //   //   },
// //   //   {
// //   //     'cardname': 'Atomic Habits',
// //   //     'cardpic': "assets/images/business/atomichabits.png"
// //   //   },
// //   // ];

// //   // List listChildrens = [
// //   //   {
// //   //     'cardname': 'The Very Hungry Caterpillar',
// //   //     'cardpic': "assets/images/childrens/caterpiller.png"
// //   //   },
// //   //   {
// //   //     'cardname': 'Charloettes Web',
// //   //     'cardpic': "assets/images/childrens/charlottesweb.png"
// //   //   },
// //   //   {
// //   //     'cardname': 'Where the Wild Things Are',
// //   //     'cardpic': "assets/images/childrens/wildthings.png"
// //   //   },
// //   //   {
// //   //     'cardname': 'Harry Potter and the Sorcerer’s Stone',
// //   //     'cardpic': "assets/images/childrens/harrypoter.png"
// //   //   },
// //   //   {'cardname': 'Matilda', 'cardpic': "assets/images/childrens/matilda.png"},
// //   // ];

// //   // List listPoetry = [
// //   //   {
// //   //     'cardname': 'The Road Not Taken',
// //   //     'cardpic': "assets/images/poetry/roadnottaken.png"
// //   //   },
// //   //   {'cardname': 'If—', 'cardpic': "assets/images/poetry/if.png"},
// //   //   {
// //   //     'cardname': 'Ode to a Nightingale',
// //   //     'cardpic': "assets/images/poetry/odenightingale.png"
// //   //   },
// //   //   {'cardname': 'Daffodils', 'cardpic': "assets/images/poetry/daffodils.png"},
// //   //   {'cardname': 'The Raven', 'cardpic': "assets/images/poetry/raven.png"},
// //   //   {
// //   //     'cardname': 'Still I Rise',
// //   //     'cardpic': "assets/images/poetry/stillirise.png"
// //   //   },
// //   // ];

// //   // Section Card function for creating card of the sections ex: Enginerring, Law, etc



// //   "₹ ${listbook!['books'][index]['price'] * con * con1}"
// //   ShoppingBag()


// //   import 'package:flutter/material.dart';
// // import 'package:google_fonts/google_fonts.dart';
// // import 'shopping_bag.dart';

// // class Detailpage extends StatefulWidget {
// //   final Map listbook;
// //   final int index;
// //   const Detailpage({required this.listbook, required this.index, super.key});

// //   @override
// //   State<Detailpage> createState() => _DetailpageState();
// // }

// // class _DetailpageState extends State<Detailpage> {
// //   int con = 0;
// //   int con1 = 0;

// //   Map? listbook;
// //   int? index;
// //   @override
// //   void initState() {
// //     super.initState();
// //     listbook = widget.listbook;
// //     index = widget.index;
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     print(listbook);
// //     print(listbook!['books'][index]['cardpic']);
// //     return Scaffold(
// //       body: Center(
// //         child: Column(
// //           children: [
// //             Padding(
// //               padding: const EdgeInsets.only(top: 80),
// //               child: Container(
// //                 decoration: const BoxDecoration(
// //                   boxShadow: [
// //                     BoxShadow(
// //                       blurRadius: 12,
// //                       offset: Offset(0, 4),
// //                       color: Color.fromRGBO(0, 0, 0, 0.16),
// //                       blurStyle: BlurStyle.outer,
// //                     ),
// //                   ],
// //                 ),
// //                 child: Container(
// //                   height: 350,
// //                   width: 500,
// //                   child: Image.asset(
// //                     listbook!['books'][index]['cardpic'],
// //                     fit: BoxFit.cover,
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             Row(
// //               children: [
// //                 Column(
// //                   crossAxisAlignment: CrossAxisAlignment.start,
// //                   children: [
// //                     Padding(
// //                       padding: const EdgeInsets.only(top: 20, left: 130),
// //                       child: Text(listbook!['books'][index]['cardname'],
// //                           style: GoogleFonts.quicksand(
// //                               fontSize: 22,
// //                               fontWeight: FontWeight.w800,
// //                               color: Colors.black)),
// //                     ),
// //                     Padding(
// //                       padding:
// //                           const EdgeInsets.only(top: 20, right: 140, left: 15),
// //                       child: Text("Book-Count",
// //                           style: GoogleFonts.quicksand(
// //                               fontSize: 22,
// //                               fontWeight: FontWeight.w400,
// //                               color: Colors.black)),
// //                     ),
// //                     Row(
// //                       children: [
// //                         Padding(
// //                           padding: const EdgeInsets.all(10.0),
// //                           child: GestureDetector(
// //                             onTap: () {
// //                               con--;
// //                               setState(() {
// //                                 if (con < 0) {
// //                                   con = 0;
// //                                 }
// //                               });
// //                             },
// //                             child: Container(
// //                               height: 30,
// //                               width: 30,
// //                               decoration: BoxDecoration(
// //                                 shape: BoxShape.circle,
// //                                 border: Border.all(color: Colors.blue),
// //                               ),
// //                               child: const Icon(
// //                                 Icons.remove,
// //                                 color: Colors.black,
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(10.0),
// //                           child: Container(
// //                               height: 30,
// //                               width: 30,
// //                               decoration: BoxDecoration(
// //                                 shape: BoxShape.circle,
// //                                 border: Border.all(color: Colors.blue),
// //                               ),
// //                               child: Center(
// //                                 child: Text(
// //                                   "$con",
// //                                   style: GoogleFonts.quicksand(
// //                                       fontSize: 19,
// //                                       fontWeight: FontWeight.w800,
// //                                       color: Colors.black),
// //                                 ),
// //                               )),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.all(10.0),
// //                           child: GestureDetector(
// //                             onTap: () {
// //                               con++;
// //                               setState(() {});
// //                             },
// //                             child: Container(
// //                               height: 30,
// //                               width: 30,
// //                               decoration: BoxDecoration(
// //                                 shape: BoxShape.circle,
// //                                 border: Border.all(color: Colors.blue),
// //                               ),
// //                               child: const Icon(
// //                                 Icons.add,
// //                                 color: Colors.black,
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ],
// //                 ),
// //                 Column(
// //                   children: [
// //                     Padding(
// //                       padding: const EdgeInsets.only(
// //                         top: 70,
// //                       ),
// //                       child: Text("DAYS",
// //                           style: GoogleFonts.quicksand(
// //                               fontSize: 19,
// //                               fontWeight: FontWeight.w400,
// //                               color: Colors.black)),
// //                     ),
// //                     Row(
// //                       children: [
// //                         Padding(
// //                           padding: const EdgeInsets.only(
// //                               top: 15, left: 5, right: 15),
// //                           child: GestureDetector(
// //                             onTap: () {
// //                               con1--;
// //                               setState(() {});
// //                             },
// //                             child: Container(
// //                               height: 30,
// //                               width: 30,
// //                               decoration: BoxDecoration(
// //                                 shape: BoxShape.circle,
// //                                 border: Border.all(color: Colors.blue),
// //                               ),
// //                               child: const Icon(
// //                                 Icons.remove,
// //                                 color: Colors.black,
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                         Padding(
// //                           padding:
// //                               const EdgeInsets.only(top: 15, left: 5, right: 3),
// //                           child: Container(
// //                               height: 30,
// //                               width: 30,
// //                               decoration: BoxDecoration(
// //                                 shape: BoxShape.circle,
// //                                 border: Border.all(color: Colors.blue),
// //                               ),
// //                               child: Center(
// //                                 child: Text(
// //                                   "$con1",
// //                                   style: GoogleFonts.quicksand(
// //                                       fontSize: 19,
// //                                       fontWeight: FontWeight.w800,
// //                                       color: Colors.black),
// //                                 ),
// //                               )),
// //                         ),
// //                         Padding(
// //                           padding: const EdgeInsets.only(
// //                             top: 15,
// //                             left: 5,
// //                           ),
// //                           child: GestureDetector(
// //                             onTap: () {
// //                               con1++;
// //                               setState(() {});
// //                             },
// //                             child: Container(
// //                               height: 30,
// //                               width: 30,
// //                               decoration: BoxDecoration(
// //                                 shape: BoxShape.circle,
// //                                 border: Border.all(color: Colors.blue),
// //                               ),
// //                               child: const Icon(
// //                                 Icons.add,
// //                                 color: Colors.black,
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ],
// //                 ),
// //               ],
// //             ),
// //             Text(
// //               "TOTAL",
// //               style: GoogleFonts.quicksand(
// //                 fontSize: 19,
// //                 fontWeight: FontWeight.w800,
// //               ),
// //             ),
// //             Text(
// //               "₹ ${listbook!['books'][index]['price'] * con * con1}",
// //               style: GoogleFonts.quicksand(
// //                 fontSize: 19,
// //                 fontWeight: FontWeight.w800,
// //               ),
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.only(top: 48),
// //               child: GestureDetector(
// //                 onTap: () {
// //                   Navigator.of(context)
// //                       .push(MaterialPageRoute(builder: (context) {
// //                     return ShoppingBag();
// //                   }));
// //                   setState(() {});
// //                 },
// //                 child: Container(
// //                   height: 48,
// //                   width: 300,
// //                   decoration: const BoxDecoration(
// //                     borderRadius: BorderRadius.all(Radius.circular(20)),
// //                     color: Colors.blue,
// //                     boxShadow: [
// //                       BoxShadow(
// //                         blurRadius: 12,
// //                         offset: Offset(4, 4),
// //                         color: Color.fromRGBO(0, 0, 0, 0.5),
// //                         blurStyle: BlurStyle.outer,
// //                       ),
// //                     ],
// //                   ),
// //                   child: Center(
// //                     child: Text(
// //                       "Add To Cart",
// //                       style: GoogleFonts.quicksand(
// //                         fontSize: 19,
// //                         fontWeight: FontWeight.w800,
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             Padding(
// //               padding: const EdgeInsets.only(top: 48),
// //               child: GestureDetector(
// //                 onTap: () {
// //                   setState(() {});
// //                 },
// //                 child: Container(
// //                   height: 48,
// //                   width: 300,
// //                   decoration: const BoxDecoration(
// //                     borderRadius: BorderRadius.all(Radius.circular(20)),
// //                     color: Colors.blue,
// //                     boxShadow: [
// //                       BoxShadow(
// //                         blurRadius: 12,
// //                         offset: Offset(4, 4),
// //                         color: Color.fromRGBO(0, 0, 0, 0.5),
// //                         blurStyle: BlurStyle.outer,
// //                       ),
// //                     ],
// //                   ),
// //                   child: Center(
// //                     child: Text(
// //                       "Checkout",
// //                       style: GoogleFonts.quicksand(
// //                         fontSize: 19,
// //                         fontWeight: FontWeight.w800,
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // ((widget.listbook['books'][widget.index] == AppdataModal.listBCom[widget.index] || widget.listbook['books'][widget.index] == AppdataModal.listBSC[widget.index] || widget.listbook['books'][widget.index] == AppdataModal.listEngineering[widget.index] || widget.listbook['books'][widget.index] == AppdataModal.listLAW[widget.index] || widget.listbook['books'][widget.index] == AppdataModal.listMBBS[widget.index] || widget.listbook['books'][widget.index] == AppdataModal.listMCom[widget.index]) && (widget.listbook == AppdataModal.listEducation[widget.index])) ? widget.listbook['books'][widget.index]['price'].toString() : 


// // shopping cart 
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'checkout_screen.dart';
// import 'appcolor.dart';

// class ShoppingBag extends StatefulWidget {
//   const ShoppingBag({super.key});

//   @override
//   State<ShoppingBag> createState() => _ShoppingBagState();
// }

// class _ShoppingBagState extends State<ShoppingBag> {
//   int count = 1;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.color4,
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         centerTitle: true,
//         title: Text("Shopping Bag",
//             style: GoogleFonts.quicksand(
//               fontWeight: FontWeight.w700,
//               fontSize: 20,
//               color: Colors.black,
//             )),
//         leading: IconButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             icon: const Icon(Icons.arrow_back)),
//       ),
//       body: Column(
//         children: [
//           SizedBox(
//             height: 500,
//             child: ListView.builder(
//                 itemCount: 2,
//                 shrinkWrap: true,
//                 itemBuilder: (context, index) {
//                   return Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                             color: Colors.white,
//                             border: Border.all(color: AppColor.color4),
//                             borderRadius: BorderRadius.circular(8),
//                             boxShadow: const [
//                               BoxShadow(
//                                   spreadRadius: 0,
//                                   blurRadius: 5,
//                                   offset: Offset(0, 1),
//                                   color: Color.fromRGBO(0, 0, 0, 1),
//                                   blurStyle: BlurStyle.outer)
//                             ]),
//                         margin: const EdgeInsets.all(15),
//                         child: Row(
//                           children: [
//                             Container(
//                               decoration: const BoxDecoration(boxShadow: [
//                                 BoxShadow(
                                  
//                                     blurRadius: 7,
//                                     offset: Offset(0, 4),
//                                     color: Color.fromRGBO(0, 0, 0, 1),
//                                     blurStyle: BlurStyle.outer)
//                               ]),
//                               margin: const EdgeInsets.all(10),
//                               height: 100,
//                               width: 100,
//                               child: Image.asset(
//                                 "assets/images/business/principles.png",
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text(
//                                   "Book1",
//                                   style: GoogleFonts.quicksand(
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: 16,
//                                       color: AppColor.color2),
//                                 ),
//                                 Text(
//                                   "₹100/day ₹216",
//                                   style: GoogleFonts.quicksand(
//                                       fontWeight: FontWeight.w500,
//                                       fontSize: 16,
//                                       color: Colors.black),
//                                 ),
//                                 const SizedBox(
//                                   height: 10,
//                                 ),
//                                 Row(
//                                   children: [
//                                     Container(
//                                       height: 40,
//                                       width: 40,
//                                       decoration: const BoxDecoration(
//                                           shape: BoxShape.circle,
//                                           color:
//                                               Color.fromRGBO(232, 232, 232, 1)),
//                                       child: IconButton(
//                                           onPressed: () {
//                                             count++;
//                                             setState(() {});
//                                           },
//                                           icon: const Icon(
//                                             Icons.add,
//                                             color: Colors.black,
//                                           )),
//                                     ),
//                                     const SizedBox(
//                                       width: 20,
//                                     ),
//                                     Container(
//                                         height: 40,
//                                         width: 40,
//                                         decoration: BoxDecoration(
//                                             shape: BoxShape.rectangle,
//                                             border: Border.all(
//                                                 color: AppColor.color2)),
//                                         child: Center(child: Text("$count"))),
//                                     const SizedBox(
//                                       width: 20,
//                                     ),
//                                     GestureDetector(
//                                       onTap: () {
//                                         if (count > 0) {
//                                           count--;
//                                         }
//                                         setState(() {});
//                                       },
//                                       child: Container(
//                                         height: 40,
//                                         width: 40,
//                                         decoration: const BoxDecoration(
//                                             shape: BoxShape.circle,
//                                             color: Color.fromRGBO(
//                                                 232, 232, 232, 1)),
//                                         child: IconButton(
//                                             onPressed: () {
//                                               if (count > 0) {
//                                                 count--;
//                                               }
//                                               setState(() {});
//                                             },
//                                             icon: const Icon(
//                                               Icons.remove,
//                                               color: Colors.black,
//                                             )),
//                                       ),
//                                     ),
//                                     const SizedBox(
//                                       width: 50,
//                                     ),
//                                     IconButton(
//                                         onPressed: () {},
//                                         icon: Icon(Icons.delete_outline,
//                                             color: AppColor.color5))
//                                   ],
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   );
//                 }),
//           ),
//           const Divider(
//             height: 1,
//             thickness: 2.0,
//           ),
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 children: [
//                   Row(children: [
//                     Text(
//                       "Subtotal",
//                       style: GoogleFonts.quicksand(
//                           fontSize: 17,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.black),
//                     ),
//                     const Spacer(),
//                     Text(
//                       "₹206",
//                       style: GoogleFonts.quicksand(
//                           fontSize: 17,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.black),
//                     ),
//                   ]),
//                   Row(children: [
//                     Text(
//                       "Shipping",
//                       style: GoogleFonts.quicksand(
//                           fontSize: 17,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.black),
//                     ),
//                     const Spacer(),
//                     Text(
//                       "₹10",
//                       style: GoogleFonts.quicksand(
//                           fontSize: 17,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.black),
//                     ),
//                   ]),
//                   Row(children: [
//                     Text(
//                       "Grand Total",
//                       style: GoogleFonts.quicksand(
//                           fontSize: 17,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.black),
//                     ),
//                     const Spacer(),
//                     Text(
//                       "₹216",
//                       style: GoogleFonts.quicksand(
//                           fontSize: 17,
//                           fontWeight: FontWeight.w500,
//                           color: Colors.black),
//                     ),
//                   ]),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.of(context)
//                           .push(MaterialPageRoute(builder: (context) {
//                         return const CheckoutScreen();
//                       }));
//                     },
//                     child: Center(
//                       child: Container(
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             color: AppColor.color1),
//                         height: 50,
//                         width: 321,
//                         child: Center(
//                           child: Text(
//                             "Pay and Place order",
//                             style: GoogleFonts.quicksand(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.bold,
//                                 color: const Color.fromRGBO(0, 0, 0, 1)),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
