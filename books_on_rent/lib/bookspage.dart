import './appcolor.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detailspage.dart';

class BooksPage extends StatefulWidget {
  final String branch;
  final String year;
  final Map mapBooks;
  const BooksPage(
      {required this.branch,
      required this.year,
      // getting map on that index  listBooks = AppdataModal.listEducation[index] index is selected option
      required this.mapBooks,
      super.key});

  @override
  State<BooksPage> createState() {
    return _BooksPageState();
  }
}

class _BooksPageState extends State<BooksPage> {
  String? branch;
  String? year;
  Map? mapBooks;
  @override
  void initState() {
    super.initState();
    branch = widget.branch;
    year = widget.year;
    mapBooks = widget.mapBooks;
  }

  @override
  Widget build(BuildContext context) {
    // print(branch);
    // print(year);
    // print(listBooks);
    // print(listBooks!['books'].length);

    print("BOOKS LIST : $mapBooks");
    return Scaffold(
      backgroundColor: AppColor.color4,
      appBar: AppBar(
        title: Text(
          "Books Page",
          style: GoogleFonts.quicksand(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            // shadows: [
            //   const Shadow(
            //     offset: Offset(0, 4),
            //     blurRadius: 2.0,
            //     color: Color.fromRGBO(0, 0, 0, 0.25),
            //   ),
            // ]
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5),
                child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        branch!,
                        style: GoogleFonts.quicksand(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        year!,
                        style: GoogleFonts.quicksand(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
              ),
            ),
            // Text(
            //   branch!,
            //   style: GoogleFonts.quicksand(
            //     fontSize: 25,
            //     fontWeight: FontWeight.w400,
            //   ),
            // ),
            // Text(
            //   year!,
            //   style: GoogleFonts.quicksand(
            //     fontSize: 20,
            //     fontWeight: FontWeight.w400,
            //   ),
            // ),

            // const Padding(
            //   padding: EdgeInsets.only(top: 10, right: 20, bottom: 20),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       hintText: "Search",
            //       filled: true,
            //       hoverColor: Color.fromRGBO(189, 189, 189, 1),
            //       border: OutlineInputBorder(
            //         borderRadius: BorderRadius.all(Radius.circular(20)),
            //       ),
            //       prefixIcon: Icon(Icons.search_outlined),
            //       fillColor: Color.fromRGBO(189, 189, 189, 1),
            //     ),
            //   ),
            // ),

            // List of Books
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: mapBooks!['books'].length,
                itemBuilder: (context, index) {
                  // print(
                  //     "image folder: ${listBooks!['books'][index]['cardpic']}");
                  // Book Card
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 110,
                      // width: 110,
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                              color: const Color.fromARGB(255, 53, 52, 52)),
                          shape: BoxShape.rectangle),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Detailpage(
                                      mapBook: mapBooks!['books'][index], index: index),
                                ),
                              );
                            },
                            child: Container(
                              padding: const EdgeInsets.only(left: 10, top: 7),
                              height: 100,
                              width: 100,
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: const Color.fromARGB(255, 99, 97, 97)
                                        .withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 15,
                                    offset: const Offset(4, 4))
                              ]),
                              child: Stack(
                                alignment: AlignmentDirectional.topEnd,
                                children: [
                                  Image.asset(
                                    // index is listview builder index
                                    mapBooks!['books'][index]['cardpic'],
                                  ),
                                  const Icon(Icons.favorite_border,
                                      color: Colors.white, weight: 500),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  mapBooks!['books'][index]['cardname'],
                                  style: GoogleFonts.quicksand(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Expanded(
                                  child: SingleChildScrollView(
                                    child: SizedBox(
                                      child: Stack(
                                        alignment: Alignment.bottomRight,
                                        children: [
                                          Text(
                                            mapBooks!['books'][index]
                                                ['description'],
                                            style: GoogleFonts.quicksand(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Positioned(
                                            right: 10,
                                            bottom: 10,
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20),
                                              decoration: BoxDecoration(
                                                color: AppColor.color4,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 1,
                                                    blurRadius: 8,
                                                    offset: const Offset(4,
                                                        4), // Shadow position
                                                  ),
                                                ],
                                              ),
                                              child: Text(
                                                "₹ ${mapBooks!['books'][index]['price'].toString()}/Day",
                                                style: GoogleFonts.quicksand(
                                                  color: Colors.red,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
