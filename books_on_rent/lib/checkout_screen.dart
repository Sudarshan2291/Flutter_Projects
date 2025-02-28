import './appcolor.dart';
import './success_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutScreen extends StatefulWidget {
  final num amount;
  const CheckoutScreen({required this.amount, super.key});

  @override
  State createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  int _value = 1;
  int _onChange = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.color4,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(
          "Checkout",
          style: GoogleFonts.quicksand(
              fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Payment Method",
              style: GoogleFonts.quicksand(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                  activeColor: Colors.black,
                ),
                Text("Gpay",
                    style: GoogleFonts.quicksand(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black))
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 2,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                  activeColor: Colors.black,
                ),
                Text("Debit/Card",
                    style: GoogleFonts.quicksand(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black))
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 3,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                  activeColor: Colors.black,
                ),
                Text("Cash",
                    style: GoogleFonts.quicksand(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black))
              ],
            ),
            Row(
              children: [
                Radio(
                  value: 4,
                  groupValue: _value,
                  onChanged: (value) {
                    setState(() {
                      _value = value!;
                    });
                  },
                  activeColor: Colors.black,
                ),
                Text("Bank Transfer",
                    style: GoogleFonts.quicksand(
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                        color: Colors.black))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              height: 2,
              thickness: 2,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Delivery Address",
              style: GoogleFonts.quicksand(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  Container(
                    width: 235,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                    child: Row(
                      children: [
                        Radio(
                          value: 1,
                          groupValue: _onChange,
                          onChanged: (value) {
                            _onChange = value!;
                            setState(() {});
                          },
                          activeColor: Colors.white,
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 80,
                          width: 170,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Text(
                              "Selina K,21/3, Ragava Street,Silver tone,Kodaikanal - 655 789",
                              style: GoogleFonts.quicksand(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 235,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black,
                    ),
                    child: Row(
                      children: [
                        Radio(
                          value: 2,
                          groupValue: _onChange,
                          onChanged: (value) {
                            _onChange = value!;
                            setState(() {});
                          },
                          activeColor: Colors.white,
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 80,
                          width: 170,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Text(
                              "Selina K,21/3, Ragava Street,Silver tone,Kodaikanal - 655 789",
                              style: GoogleFonts.quicksand(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 20),
              child: Row(
                children: [
                  Text(
                    "Amount Payable",
                    style: GoogleFonts.quicksand(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Text(
                    "₹ ${widget.amount}",
                    style: GoogleFonts.quicksand(
                        fontSize: 17, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const SuccessPage();
                }));
              },
              child: Center(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColor.color1),
                  height: 50,
                  width: 321,
                  child: Center(
                    child: Text(
                      "Pay and Place order",
                      style: GoogleFonts.quicksand(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(0, 0, 0, 1)),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
